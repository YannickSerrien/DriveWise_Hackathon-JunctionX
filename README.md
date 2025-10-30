# DriveWise 🚗

> Your Personal Digital Co-Pilot for Smarter Earning

[![Next.js](https://img.shields.io/badge/Next.js-15.3-black?logo=next.js)](https://nextjs.org/)
[![React](https://img.shields.io/badge/React-18.3-blue?logo=react)](https://react.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.0-blue?logo=typescript)](https://www.typescriptlang.org/)
[![Python](https://img.shields.io/badge/Python-3.10+-green?logo=python)](https://www.python.org/)
[![FastAPI](https://img.shields.io/badge/FastAPI-Latest-teal?logo=fastapi)](https://fastapi.tiangolo.com/)
[![Google Gemini AI](https://img.shields.io/badge/Google_Gemini-AI-orange?logo=google)](https://ai.google.dev/)

## 📋 Table of Contents

- [Overview](#overview)
- [Key Features](#key-features)
- [Architecture](#architecture)
- [Technology Stack](#technology-stack)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Running the Application](#running-the-application)
- [Project Structure](#project-structure)
- [Data Files](#data-files)
- [Features Breakdown](#features-breakdown)
- [API Documentation](#api-documentation)
- [Development](#development)
- [Deployment](#deployment)
- [Workspace Directory](#workspace-directory)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## 🎯 Overview

**DriveWise** is a hackathon project developed for the JunctionX Uber Challenge that provides an intelligent assistant for ride-sharing drivers. The application combines generative AI, predictive analytics, and real-time data processing to help drivers maximize their earnings, optimize their schedules, and maintain their well-being.

This solution addresses the challenges millions of Uber drivers face daily: navigating cities efficiently, optimizing trip opportunities, balancing work-life wellness, and making data-driven decisions about when and where to drive.

### The Problem We're Solving

Ride-sharing drivers often struggle with:
- Determining optimal times and locations to drive
- Managing their work schedule effectively
- Tracking progress towards incentive bonuses
- Maintaining work-life balance and wellness
- Making real-time decisions about trip opportunities

### Our Solution

DriveWise provides:
- **AI-Powered Chatbot**: Get instant answers to questions about driving strategies, safety, and earnings optimization
- **Predictive Analytics**: Machine learning-powered recommendations for best driving times and locations
- **Performance Dashboard**: Track weekly earnings, trips, and daily performance highlights
- **Incentive Tracking**: Monitor progress toward bonuses with actionable daily plans
- **Wellness Monitoring**: Smart reminders to take breaks after extended driving periods
- **Route Optimization**: Dynamic programming algorithm to find optimal zones for maximum earnings

## ✨ Key Features

### 🤖 AI Assistant
- **Conversational AI**: Google Gemini-powered chatbot for instant driver support
- **Context-Aware**: Understands driver preferences and provides personalized advice
- **Multi-Topic Support**: Answers questions about earnings, safety, routes, and tips

### 📊 Performance Analytics
- **Weekly Summary**: Comprehensive overview of earnings, trips, tips, and driving time
- **Daily Highlights**: Identifies and celebrates best-performing days
- **Visual Charts**: Interactive charts using Recharts for data visualization
- **Historical Data**: Track performance trends over time

### 🎯 Incentive Management
- **Progress Tracking**: Monitor real-time progress toward bonus goals
- **Daily Planning**: AI-generated suggestions for achieving incentives
- **Completion Rate**: Visual indicators of bonus milestone progress

### 🏥 Wellness Features
- **Break Reminders**: Automatic nudges after 4.5 hours of continuous driving
- **Session Tracking**: Monitor driving hours and suggest optimal break times
- **Safety First**: Promotes driver well-being through timely interventions

### 📍 Location Optimization
- **Dynamic Programming Algorithm**: Finds optimal starting zones based on:
  - Historical demand patterns
  - Surge pricing trends
  - Weather conditions
  - Time of day
  - Distance and travel time
- **Real-Time Recommendations**: Updates suggestions based on current conditions
- **Multi-Factor Scoring**: Considers earnings potential, trip frequency, and driver preferences

## 🏗 Architecture

DriveWise follows a modern full-stack architecture with three main components:

```
┌─────────────────────────────────────────────────────────────┐
│                      Frontend (Next.js)                      │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │  Dashboard   │  │   Chatbot    │  │   Driving    │      │
│  │  Components  │  │   (Gemini)   │  │   Assistant  │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
└─────────────────────────────────────────────────────────────┘
                            │
                            ↓
┌─────────────────────────────────────────────────────────────┐
│               Backend API (FastAPI + Python)                 │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │   Service    │  │   Compute    │  │   Database   │      │
│  │    Layer     │  │   Optimizer  │  │   Manager    │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
└─────────────────────────────────────────────────────────────┘
                            │
                            ↓
┌─────────────────────────────────────────────────────────────┐
│                    Data Layer                                │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │    SQLite    │  │    Redis     │  │   NetworkX   │      │
│  │  (Historical)│  │ (Real-time)  │  │   (Graphs)   │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
└─────────────────────────────────────────────────────────────┘
```

### Frontend Architecture
- **Framework**: Next.js 15 with React 18 and TypeScript
- **UI Library**: Radix UI components with Tailwind CSS
- **State Management**: React Context API for global state
- **AI Integration**: Google Genkit for Gemini AI flows
- **Styling**: Tailwind CSS with custom design system

### Backend Architecture
- **API Framework**: FastAPI for high-performance async operations
- **Algorithm**: Dynamic Programming for route optimization
- **Graph Processing**: NetworkX for mobility graph analysis
- **Data Storage**: 
  - SQLite for historical data and ML training
  - Redis for real-time caching and pub/sub
- **ML Components**: Weather prediction and demand forecasting

#### Database Models (SQLAlchemy)
The backend uses 7 main database models:

1. **Driver**: Driver registration and city assignment
2. **DriverPreferences**: Working hours and schedule preferences
3. **DriverStateHistory**: Historical tracking of driver status changes
4. **DrivingSession**: Active and completed driving sessions
5. **CompletedTrip**: Finished trips with earnings and metrics
6. **TripRequestHistory**: Historical trip request data
7. **WeatherHistory**: Weather patterns by city
8. **SurgeHistory**: Surge pricing historical data

#### Service Layer Architecture
The backend follows a clean architecture pattern:

```python
# Service Layer (service.py - 870+ lines)
- DataService: Business logic for all operations
  - Driver management (register, update, get info)
  - Location tracking (coordinates, state history)
  - Trip management (requests, completed trips)
  - Working hours & preferences
  - Optimal time & zone calculations
  - Session management (start/stop driving)

# Compute Layer (compute module)
- ComputeService: ML and optimization logic
  - Optimal time computation
  - Zone score calculations
  - Best zone recommendations
  - All time/zone score generation

# Database Layer (database module)
- DatabaseManager: Data persistence
  - SQLite async operations
  - Redis caching and pub/sub
  - Connection pooling
  - Session management
```

#### API Endpoints Structure
All endpoints follow RESTful conventions with `/api/v1` prefix:
- **Drivers**: CRUD operations and driver management
- **Location**: Real-time coordinate updates
- **Working Hours**: Schedule management
- **Optimization**: Time and zone recommendations
- **Trips**: Trip request and completion tracking
- **Data Updates**: Weather and surge pricing updates

### Data Flow
1. **User Interaction**: Driver interacts with React UI
2. **API Request**: Frontend sends requests to FastAPI backend
3. **Business Logic**: Service layer processes requests using compute optimizer
4. **Data Access**: Database manager handles SQLite/Redis operations
5. **Algorithm Execution**: Dynamic programming optimizer computes recommendations
6. **Response**: JSON data returned and rendered in UI

## 🛠 Technology Stack

### Frontend
- **Next.js 15.3.3** - React framework with server-side rendering
- **React 18.3.1** - UI component library
- **TypeScript 5** - Type-safe JavaScript
- **Tailwind CSS 3.4.1** - Utility-first CSS framework
- **Radix UI** - Accessible component primitives
- **Genkit 1.20.0** - Google's AI integration framework
- **Recharts ^2.15.1** - Charting library for data visualization
- **Lucide React 0.475.0** - Icon library
- **React Hook Form 7.54.2** - Form validation
- **Zod 3.24.2** - Schema validation

### Backend
- **Python 3.10+** - Programming language
- **FastAPI** - Modern async web framework
- **SQLAlchemy** - SQL ORM for database operations
- **NetworkX** - Graph processing and analysis
- **Pandas** - Data manipulation and analysis
- **Pydantic** - Data validation
- **Redis** - In-memory data store for caching
- **Uvicorn** - ASGI server

### AI & ML
- **Google Gemini** - Large language model for chatbot
- **Custom ML Models** - Weather prediction and demand forecasting
- **Dynamic Programming** - Route optimization algorithm

### Development Tools
- **ESLint** - JavaScript/TypeScript linting
- **PostCSS** - CSS processing
- **dotenv** - Environment variable management

## 📦 Prerequisites

Before you begin, ensure you have the following installed:

- **Node.js** 18.x or higher ([Download](https://nodejs.org/))
- **npm** 9.x or higher (comes with Node.js)
- **Python** 3.10 or higher ([Download](https://www.python.org/))
- **pip** (comes with Python)
- **Redis** (optional, for production features) ([Download](https://redis.io/))
- **Git** for version control

### Verify Installation

```bash
node --version  # Should be v18.x or higher
npm --version   # Should be 9.x or higher
python --version  # Should be 3.10 or higher
pip --version
```

## 🚀 Installation

### 1. Clone the Repository

```bash
git clone https://github.com/YannickSerrien/DriveWise_Hackathon-JunctionX.git
cd DriveWise_Hackathon-JunctionX
```

### 2. Install Frontend Dependencies

```bash
npm install
```

This will install all Node.js dependencies defined in `package.json`.

### 3. Install Backend Dependencies

```bash
pip install -r requirements.txt
```

Or using a virtual environment (recommended):

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows:
venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
```

### 4. Install Redis (Optional)

**macOS (using Homebrew):**
```bash
brew install redis
brew services start redis
```

**Ubuntu/Debian:**
```bash
sudo apt-get update
sudo apt-get install redis-server
sudo systemctl start redis-server
```

**Windows:**
Download from [Redis for Windows](https://github.com/microsoftarchive/redis/releases)

## ⚙️ Configuration

### Environment Variables

Create a `.env` file in the root directory:

```env
# Google Gemini AI Configuration
GOOGLE_GENAI_API_KEY=your_google_gemini_api_key_here

# Backend API Configuration
API_BASE_URL=http://localhost:8000
NEXT_PUBLIC_API_URL=http://localhost:8000

# Redis Configuration (if using Redis)
REDIS_HOST=localhost
REDIS_PORT=6379

# Database Configuration
DATABASE_URL=sqlite:///./drivewise.db
```

### Getting a Google Gemini API Key

1. Visit [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Sign in with your Google account
3. Click "Create API Key"
4. Copy the key and add it to your `.env` file

### Frontend Configuration

The Next.js configuration is in `next.config.ts`. Default settings should work for most cases.

### Backend Configuration

The FastAPI configuration is in `Algo_best_location/main.py`. You can customize:
- CORS origins
- Database connection
- Redis connection
- Port and host settings

## 🎮 Running the Application

### Development Mode

You'll need to run both the frontend and backend servers:

#### Terminal 1: Start Frontend (Next.js)

```bash
npm run dev
```

The frontend will be available at: **http://localhost:9003**

#### Terminal 2: Start Backend API (FastAPI)

```bash
cd Algo_best_location
uvicorn main:app --reload --port 8000
```

The API will be available at: **http://localhost:8000**

API Documentation (Swagger UI): **http://localhost:8000/docs**

### Production Mode

#### Build Frontend

```bash
npm run build
npm run start
```

#### Run Backend

```bash
cd Algo_best_location
uvicorn main:app --host 0.0.0.0 --port 8000
```

### Additional Commands

```bash
# Type checking
npm run typecheck

# Linting
npm run lint

# Start Genkit development UI (for AI debugging)
npm run genkit:dev

# Watch mode for Genkit
npm run genkit:watch
```

## 📁 Project Structure

```
DriveWise_Hackathon-JunctionX/
├── src/                          # Frontend source code
│   ├── ai/                       # AI integration with Google Genkit
│   │   ├── flows/                # AI flows (chat, etc.)
│   │   │   └── chat.ts           # Chat flow implementation
│   │   ├── dev.ts                # Development configuration
│   │   └── genkit.ts             # Genkit setup
│   ├── app/                      # Next.js app directory
│   │   ├── api/                  # API routes
│   │   │   └── optimize/         # Optimization API routes
│   │   │       └── route.ts      # Route optimization endpoint
│   │   ├── chatbot/              # Chatbot page
│   │   │   └── page.tsx          # AI chatbot interface
│   │   ├── dashboard/            # Dashboard page
│   │   │   └── page.tsx          # Main dashboard view
│   │   ├── driving/              # Driving assistant page
│   │   │   └── page.tsx          # Real-time driving guidance
│   │   ├── availabilities/       # Availability management page
│   │   │   └── page.tsx          # Driver availability settings
│   │   ├── welcome/              # Welcome page
│   │   │   └── page.tsx          # Landing/welcome screen
│   │   ├── components/           # React components
│   │   │   └── dashboard/        # Dashboard-specific components
│   │   │       ├── daily-highlights.tsx    # Best day display
│   │   │       ├── driver-status.tsx       # Online/offline status
│   │   │       ├── header.tsx              # Dashboard header
│   │   │       ├── incentive-tracker.tsx   # Bonus progress tracker
│   │   │       ├── schedule-drive.tsx      # Scheduling component
│   │   │       ├── settings-dialog.tsx     # Settings modal
│   │   │       ├── weekly-summary.tsx      # Week statistics
│   │   │       └── wellness-nudge.tsx      # Break reminder
│   │   ├── contexts/             # React Context providers
│   │   │   ├── driver-status-context.tsx   # Driver state management
│   │   │   └── settings-context.tsx        # App settings management
│   │   ├── lib/                  # Utility functions and data
│   │   │   └── data.ts           # Mock data for testing
│   │   ├── layout.tsx            # Root layout with providers
│   │   ├── page.tsx              # Root page (redirects to welcome)
│   │   └── globals.css           # Global styles
│   ├── components/               # Reusable UI components
│   │   └── ui/                   # shadcn/ui components (40+ components)
│   │       ├── button.tsx        # Button component
│   │       ├── card.tsx          # Card component
│   │       ├── dialog.tsx        # Modal dialog
│   │       ├── sidebar.tsx       # Navigation sidebar
│   │       └── ...               # Many more UI components
│   ├── hooks/                    # Custom React hooks
│   │   ├── use-mobile.tsx        # Mobile detection hook
│   │   └── use-toast.ts          # Toast notification hook
│   ├── lib/                      # Shared utilities
│   │   ├── utils.ts              # Utility functions
│   │   ├── placeholder-images.ts # Image placeholder logic
│   │   └── placeholder-images.json # Image data
│   └── server/                   # Server-side Python utilities
│       ├── graph_builder.py      # Mobility graph for server
│       └── weather_predictor.py  # Weather prediction for server
│
├── Algo_best_location/           # Backend Python code
│   ├── main.py                   # FastAPI application entry point
│   ├── service.py                # Business logic layer (870+ lines)
│   ├── models.py                 # SQLAlchemy models (7 tables)
│   ├── graph_builder.py          # Mobility graph construction
│   ├── dynamic_programming_optimizer.py  # DP algorithm (700+ lines)
│   ├── weather_predictor.py      # Weather prediction ML
│   ├── dp_cli.py                 # Command-line interface for DP
│   ├── endpoints 2.py            # Alternative API endpoints implementation
│   └── Data/                     # Training and mock data
│       ├── README.csv            # Data documentation
│       ├── uber.db               # SQLite database
│       ├── ride_trips.csv        # Historical ride data
│       ├── ride_trips_with_clusters.csv  # Clustered trip data
│       ├── surge_by_hour.csv     # Surge pricing patterns
│       ├── weather_daily.csv     # Weather history
│       ├── earnings_daily.csv    # Daily earnings data
│       ├── earners.csv           # Driver profiles
│       ├── riders.csv            # Rider information
│       ├── customers.csv         # Customer data
│       ├── incentives_weekly.csv # Incentive programs
│       ├── cancellation_rates.csv # Trip cancellation stats
│       ├── heatmap.csv           # Demand heatmap data
│       ├── eats_orders.csv       # Uber Eats orders
│       ├── merchants.csv         # Restaurant partners
│       └── jobs_like.csv         # Job preferences
│
├── docs/                         # Documentation
│   └── blueprint.md              # Project blueprint and design specs
│
├── workspace/                    # Alternative implementations/experiments
│   ├── next.config.ts            # Alternate Next.js config
│   └── src/                      # Alternative source code versions
│       ├── app/                  # Different app structure experiments
│       └── server/               # Alternative server implementations
│
├── package.json                  # Node.js dependencies and scripts
├── package-lock.json             # Locked dependency versions
├── requirements.txt              # Python dependencies
├── next.config.ts                # Next.js configuration
├── tsconfig.json                 # TypeScript configuration
├── tailwind.config.ts            # Tailwind CSS configuration
├── postcss.config.mjs            # PostCSS configuration
├── components.json               # shadcn/ui components configuration
├── apphosting.yaml               # Firebase App Hosting config
├── create_archive.sh             # Deployment archive script
├── uber_hackathon_v2_mock_data.xlsx  # Original mock data spreadsheet
├── .gitignore                    # Git ignore patterns
├── .env                          # Environment variables (create this)
└── README.md                     # This file
```

### Key Directories Explained

- **`src/ai/`**: Contains Google Genkit integration for AI-powered chat functionality
- **`src/app/`**: Next.js App Router pages and layouts
- **`src/components/`**: Reusable React components built with Radix UI
- **`Algo_best_location/`**: Python backend with FastAPI and optimization algorithms
- **`Algo_best_location/Data/`**: Training data and mock datasets for the ML models
- **`docs/`**: Project documentation and design specifications
- **`workspace/`**: Experimental and alternative implementations

## 📊 Data Files

The `Algo_best_location/Data/` directory contains comprehensive datasets used for training the optimization algorithms and simulating real-world scenarios:

### Core Data Files

| File | Description | Records | Purpose |
|------|-------------|---------|---------|
| **uber.db** | SQLite database | Multiple tables | Central database for all historical data |
| **ride_trips.csv** | Historical ride data | ~10,000+ | Trip patterns, pickup/dropoff locations, durations |
| **ride_trips_with_clusters.csv** | Clustered trip data | ~10,000+ | Trips grouped into hexagonal zones for analysis |
| **surge_by_hour.csv** | Surge pricing patterns | 168 (24h × 7d) | Hourly surge multipliers by zone |
| **weather_daily.csv** | Weather history | 365+ days | Daily weather conditions and temperature |
| **earnings_daily.csv** | Daily earnings data | Multiple drivers | Historical driver earnings and trip counts |

### Driver & Customer Data

| File | Description | Purpose |
|------|-------------|---------|
| **earners.csv** | Driver profiles | Driver demographics and preferences |
| **riders.csv** | Rider information | Customer ride history and patterns |
| **customers.csv** | Customer data | Extended customer profiles |

### Business Intelligence Data

| File | Description | Purpose |
|------|-------------|---------|
| **incentives_weekly.csv** | Incentive programs | Weekly bonus structures and requirements |
| **cancellation_rates.csv** | Trip cancellation statistics | Cancellation patterns by zone and time |
| **heatmap.csv** | Demand heatmap data | Visual demand intensity across city zones |

### Uber Eats Data (Extended Features)

| File | Description | Purpose |
|------|-------------|---------|
| **eats_orders.csv** | Uber Eats orders | Food delivery patterns |
| **merchants.csv** | Restaurant partners | Restaurant locations and ratings |
| **jobs_like.csv** | Job preferences | Driver delivery preferences |

### Data Format Notes

- **Coordinates**: All location data uses latitude/longitude (WGS84)
- **Hexagonal Zones**: Cities divided using H3 spatial indexing
- **Time Format**: ISO 8601 format (YYYY-MM-DD HH:MM:SS)
- **Currency**: All monetary values in USD unless specified
- **Distance**: Measured in kilometers

### Data Sources

The data is synthetic and generated for the hackathon, based on realistic patterns from:
- Historical Uber trip patterns
- Public transportation datasets
- Weather APIs simulation
- Realistic surge pricing models

**Note**: This is mock data for demonstration purposes only. No real user data is included.

## 🎨 Features Breakdown

### Dynamic Programming Optimization Algorithm

The core of DriveWise's zone recommendation system is a sophisticated dynamic programming algorithm that computes optimal earning strategies:

#### Algorithm Overview
- **Input**: Driver's location, available working hours, current time
- **Output**: Best zones to drive with expected earnings and trip probability
- **Method**: Backward induction dynamic programming on city-hour mobility graphs

#### Key Components
1. **City-Hour Mobility Graph**
   - Nodes represent pickup/dropoff clusters (hexagonal zones)
   - Edges store hourly statistics (trip counts, average fares, durations)
   - Separate graphs for each hour of the day

2. **State Space**
   - State: `(cluster_id, hour, remaining_hours)`
   - Value function: `V(c, h, L)` = expected earnings starting at cluster c, hour h, with L hours remaining

3. **Optimization Criteria**
   - Maximize expected earnings over work session
   - Account for travel time between zones
   - Consider surge pricing multipliers
   - Factor in weather conditions
   - Balance trip frequency vs. trip profitability

4. **Performance Optimizations**
   - Graph serialization and caching
   - Redis memoization for repeated queries
   - Singleton pattern to prevent graph rebuilding
   - Transition probability pre-computation

#### Algorithm Complexity
- **Time Complexity**: O(C² × H × L) where C = clusters, H = hours, L = work duration
- **Space Complexity**: O(C × H × L)
- **Typical Runtime**: < 1 second for 24-hour optimization

### Dashboard Features

#### Weekly Summary
- **Earnings Overview**: Total earnings, tips, and trip count
- **Time Statistics**: Total hours driven and online minutes
- **Distance Tracking**: Total kilometers/miles covered
- **Visual Charts**: Bar charts showing daily performance breakdown

#### Daily Highlights
- **Best Day Identification**: Automatically identifies your most profitable day
- **Performance Metrics**: Shows earnings, trips, and hours for the highlighted day
- **Encouragement Messages**: Positive reinforcement to keep drivers motivated

#### Incentive Tracker
- **Progress Bars**: Visual representation of bonus completion
- **Daily Plans**: AI-generated suggestions to achieve goals
- **Multi-Incentive Support**: Track multiple bonuses simultaneously
- **Real-Time Updates**: Live progress tracking as trips are completed

### AI Chatbot Features

- **Natural Language Understanding**: Ask questions in plain English
- **Context Retention**: Remembers conversation history
- **Multi-Topic Support**: 
  - Best times/locations to drive
  - Tips for higher ratings
  - Vehicle maintenance advice
  - Safety recommendations
  - Wellness tips
- **Quick Responses**: Optimized for busy drivers needing fast answers

### Driving Assistant Features

#### Zone Optimization
- **Smart Recommendations**: ML-powered zone suggestions
- **Real-Time Updates**: Adjusts based on current conditions
- **Visual Maps**: Shows recommended zones on interactive maps
- **Score-Based Ranking**: Zones ranked by earnings potential

#### Session Management
- **Start/Stop Tracking**: Track driving sessions automatically
- **Break Reminders**: Wellness nudges after extended driving
- **Hours Calculation**: Accurate driving time tracking
- **Historical Sessions**: Review past driving patterns

### Settings & Customization

- **Currency Selection**: Support for multiple currencies (USD, EUR, GBP, etc.)
- **Unit Preferences**: Choose between kilometers and miles
- **Driver Profile**: Customize name and preferences
- **Working Hours**: Set preferred driving schedule
- **Notification Preferences**: Control wellness nudges and alerts

## 📚 API Documentation

### Backend API Endpoints

The FastAPI backend provides the following main endpoints:

#### Driver Management
- `POST /api/v1/drivers/register` - Register a new driver
- `GET /api/v1/drivers/{driver_id}` - Get driver information
- `PUT /api/v1/drivers/{driver_id}/city` - Update driver's city

#### Location & State
- `POST /api/v1/drivers/{driver_id}/coordinates` - Update driver location
- `GET /api/v1/drivers/{driver_id}/coordinates` - Get current location
- `GET /api/v1/drivers/{driver_id}/state-history` - Get state history

#### Working Hours & Preferences
- `POST /api/v1/drivers/{driver_id}/working-hours` - Set working hours
- `GET /api/v1/drivers/{driver_id}/working-hours` - Get working hours
- `GET /api/v1/drivers/{driver_id}/optimal-time` - Get optimal start time
- `GET /api/v1/drivers/{driver_id}/time-scores` - Get all time scores

#### Zone Optimization
- `POST /api/v1/drivers/{driver_id}/select-time` - Select a start time
- `GET /api/v1/drivers/{driver_id}/zone-scores` - Get zone rankings
- `GET /api/v1/drivers/{driver_id}/best-zone` - Get best zone recommendation
- `POST /api/v1/drivers/{driver_id}/start-driving` - Start driving session

#### Trip Management
- `POST /api/v1/trips/request` - Log a trip request
- `POST /api/v1/trips/completed` - Log a completed trip
- `GET /api/v1/trips/recent` - Get recent trip requests

#### Data Updates
- `POST /api/v1/weather/update` - Update weather data
- `POST /api/v1/surge/update` - Update surge pricing

#### Health Check
- `GET /health` - API health check

### Interactive API Documentation

Once the backend is running, visit:
- **Swagger UI**: http://localhost:8000/docs
- **ReDoc**: http://localhost:8000/redoc

## 🔧 Development

### Code Structure Guidelines

#### Frontend (TypeScript/React)
- Use functional components with hooks
- Follow Next.js App Router conventions
- Use TypeScript for type safety
- Components should be small and focused
- Use Context API for global state
- Follow Radix UI patterns for accessibility

#### Backend (Python)
- Follow PEP 8 style guide
- Use type hints for all functions
- Async/await for all I/O operations
- SQLAlchemy ORM for database operations
- Pydantic for data validation
- Keep business logic in service layer

### Adding New Features

#### Frontend Component
```typescript
// src/app/components/dashboard/new-feature.tsx
'use client';

export function NewFeature() {
  return (
    <div>
      {/* Component implementation */}
    </div>
  );
}
```

#### Backend Endpoint
```python
# Algo_best_location/service.py
async def new_feature(self, driver_id: str) -> dict[str, Any]:
    """New feature implementation."""
    # Service logic here
    return result
```

### Testing

Currently, the project doesn't have a formal test suite, but you can test:

1. **Frontend**: Manual testing in browser
2. **Backend**: Use Swagger UI at http://localhost:8000/docs
3. **API Calls**: Use tools like Postman or curl

### Debugging

#### Frontend Debugging
- Use React DevTools browser extension
- Check browser console for errors
- Use Next.js built-in error reporting

#### Backend Debugging
- FastAPI provides detailed error messages
- Check terminal output for Python errors
- Use Redis CLI to inspect cache: `redis-cli`
- Query SQLite database: `sqlite3 drivewise.db`

### Code Quality

```bash
# Type check TypeScript
npm run typecheck

# Lint TypeScript/JavaScript
npm run lint

# Format Python code (install black first)
pip install black
black Algo_best_location/
```

## 🚀 Deployment

### Firebase App Hosting

The project includes Firebase App Hosting configuration (`apphosting.yaml`) for deployment:

```yaml
# Configuration already set up for:
- Next.js frontend hosting
- Environment variable management
- Build optimization
```

### Deployment Steps

1. **Build the Frontend**
   ```bash
   npm run build
   ```

2. **Prepare Backend**
   ```bash
   cd Algo_best_location
   # Ensure all dependencies are in requirements.txt
   pip freeze > requirements.txt
   ```

3. **Deploy to Firebase**
   ```bash
   firebase deploy --only hosting
   ```

4. **Deploy Backend API**
   - Use Cloud Run, Heroku, or your preferred Python hosting
   - Set environment variables (Redis URL, API keys, etc.)
   - Ensure SQLite is replaced with PostgreSQL for production

### Production Considerations

- **Database**: Replace SQLite with PostgreSQL or Cloud SQL
- **Redis**: Use Redis Cloud or Cloud Memorystore
- **Environment Variables**: Secure all API keys and secrets
- **CORS**: Update allowed origins in `main.py`
- **Rate Limiting**: Add API rate limiting for production
- **Monitoring**: Implement logging and error tracking
- **Caching**: Configure Redis TTL for production workloads

### Archive Creation

The project includes a script for creating deployment archives:

```bash
./create_archive.sh
```

This creates a packaged version of the application for deployment.

## 📂 Workspace Directory

The `workspace/` directory contains experimental and alternative implementations:

- **Purpose**: Testing different approaches and configurations
- **Contents**: Alternative Next.js configs and component variations
- **Status**: Experimental - not used in production build
- **Note**: Can be safely ignored when running the main application

This directory is useful for:
- Trying new features without affecting main codebase
- A/B testing different UI approaches
- Exploring alternative backend implementations
- Keeping old versions for reference

## 🔍 Troubleshooting

### Common Issues and Solutions

#### Frontend Issues

**Issue**: `Module not found` errors
```bash
# Solution: Reinstall dependencies
rm -rf node_modules package-lock.json
npm install
```

**Issue**: Port 9003 already in use
```bash
# Solution: Change port in package.json or kill existing process
lsof -ti:9003 | xargs kill -9
# Or run on different port:
npm run dev -- -p 9004
```

**Issue**: TypeScript errors after installing dependencies
```bash
# Solution: Clear TypeScript cache and rebuild
rm -rf .next tsconfig.tsbuildinfo
npm run typecheck
```

#### Backend Issues

**Issue**: `ModuleNotFoundError: No module named 'app'`
```bash
# Solution: The backend expects an 'app' package structure
# Make sure you're running from the correct directory
cd Algo_best_location
python -m uvicorn main:app --reload
```

**Issue**: Redis connection errors
```bash
# Solution: Make sure Redis is running
redis-cli ping  # Should return "PONG"
# Or start Redis:
redis-server
```

**Issue**: SQLite database locked
```bash
# Solution: Close all connections and restart
# The app will create a new database if needed
rm -f drivewise.db
# Restart the backend
```

#### API Issues

**Issue**: CORS errors when calling backend from frontend
```bash
# Solution: Check CORS settings in main.py
# Make sure your frontend URL is in allow_origins list
# For development, "*" allows all origins
```

**Issue**: Google Gemini API errors
```bash
# Solution: Verify your API key
# Check .env file has correct GOOGLE_GENAI_API_KEY
# Verify key is active at https://makersuite.google.com/app/apikey
```

### Performance Issues

**Issue**: Slow optimization calculations
- **Cause**: Graph needs to be built/cached
- **Solution**: First request may be slow; subsequent requests use cache
- **Tip**: Pre-warm cache by calling optimization endpoints on startup

**Issue**: High memory usage
- **Cause**: Large NetworkX graphs in memory
- **Solution**: Increase available memory or reduce graph size
- **Tip**: Use graph serialization to disk for large cities

### Debug Mode

Enable debug logging for troubleshooting:

**Frontend:**
```bash
# Check browser console for detailed errors
# Open DevTools (F12) and check Console and Network tabs
```

**Backend:**
```bash
# Run with debug logging
cd Algo_best_location
uvicorn main:app --reload --log-level debug
```

### Getting Help

If you encounter issues not covered here:
1. Check the [Issues](https://github.com/YannickSerrien/DriveWise_Hackathon-JunctionX/issues) on GitHub
2. Review the FastAPI docs at http://localhost:8000/docs when backend is running
3. Check the console output for error messages
4. Verify all prerequisites are installed correctly

## 🤝 Contributing

This project was developed for the JunctionX Uber Hackathon. While it's primarily a competition entry, contributions and suggestions are welcome!

### Development Process

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Make your changes
4. Test thoroughly
5. Commit with clear messages: `git commit -m "Add: your feature description"`
6. Push to your fork: `git push origin feature/your-feature`
7. Open a Pull Request

### Coding Standards

- Follow existing code style and patterns
- Add comments for complex logic
- Update documentation as needed
- Test your changes before submitting

## 📄 License

This project was created for the JunctionX Uber Hackathon. All rights reserved.

## 🙏 Acknowledgments

- **JunctionX & Uber** for hosting the hackathon challenge
- **Google** for providing the Gemini AI API
- **Next.js & Vercel** for the amazing React framework
- **FastAPI** for the high-performance Python framework
- **shadcn/ui** for the beautiful UI component library
- **Radix UI** for accessible component primitives

## 📞 Contact

For questions or feedback about this project:

- **Project Repository**: [GitHub](https://github.com/YannickSerrien/DriveWise_Hackathon-JunctionX)
- **Hackathon**: JunctionX Uber Challenge

---

**Built with ❤️ for drivers who deserve better tools to succeed**
