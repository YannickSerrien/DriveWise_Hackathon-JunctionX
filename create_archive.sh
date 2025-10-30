#!/bin/bash
# This script creates a compressed tarball archive of the entire project directory.
# It excludes large and unnecessary folders to keep the archive size small.

echo "Archiving project files..."

# Use tar to create a gzipped archive.
# The --exclude flags prevent large/unnecessary folders from being included.
tar -czvf project_archive.tar.gz \
  --exclude="node_modules" \
  --exclude=".next" \
  --exclude=".git" \
  --exclude="project_archive.tar.gz" \
  --exclude="workspace/node_modules" \
  --exclude="workspace/.next" \
  .

echo "Archive created: project_archive.tar.gz"
echo "You can now download this file from the file explorer."
