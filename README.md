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
- [Features Breakdown](#features-breakdown)
- [API Documentation](#api-documentation)
- [Development](#development)
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
│   │   ├── dev.ts                # Development configuration
│   │   └── genkit.ts             # Genkit setup
│   ├── app/                      # Next.js app directory
│   │   ├── api/                  # API routes
│   │   ├── chatbot/              # Chatbot page
│   │   ├── dashboard/            # Dashboard page
│   │   ├── driving/              # Driving assistant page
│   │   ├── welcome/              # Welcome page
│   │   ├── components/           # React components
│   │   │   └── dashboard/        # Dashboard-specific components
│   │   ├── contexts/             # React Context providers
│   │   ├── lib/                  # Utility functions and data
│   │   ├── layout.tsx            # Root layout
│   │   ├── page.tsx              # Root page (redirects to welcome)
│   │   └── globals.css           # Global styles
│   ├── components/               # Reusable UI components
│   │   └── ui/                   # shadcn/ui components
│   ├── hooks/                    # Custom React hooks
│   ├── lib/                      # Shared utilities
│   └── server/                   # Server-side utilities
│
├── Algo_best_location/           # Backend Python code
│   ├── main.py                   # FastAPI application entry point
│   ├── service.py                # Business logic layer
│   ├── models.py                 # SQLAlchemy models
│   ├── graph_builder.py          # Mobility graph construction
│   ├── dynamic_programming_optimizer.py  # Route optimization algorithm
│   ├── weather_predictor.py      # Weather prediction ML
│   ├── dp_cli.py                 # Command-line interface for DP
│   ├── endpoints 2.py            # API endpoints (alternative)
│   └── Data/                     # Data files
│
├── docs/                         # Documentation
│   └── blueprint.md              # Project blueprint
│
├── workspace/                    # Additional workspace files
│
├── package.json                  # Node.js dependencies
├── requirements.txt              # Python dependencies
├── next.config.ts                # Next.js configuration
├── tsconfig.json                 # TypeScript configuration
├── tailwind.config.ts            # Tailwind CSS configuration
├── components.json               # UI components configuration
├── .env                          # Environment variables (create this)
└── README.md                     # This file
```

### Key Directories Explained

- **`src/ai/`**: Contains Google Genkit integration for AI-powered chat functionality
- **`src/app/`**: Next.js App Router pages and layouts
- **`src/components/`**: Reusable React components built with Radix UI
- **`Algo_best_location/`**: Python backend with FastAPI and optimization algorithms
- **`docs/`**: Project documentation and design specifications

## 🎨 Features Breakdown

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
