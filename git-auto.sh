#!/bin/bash

# Default commit message if not provided
commit_message=${1:-"Auto-commit changes"}

# Add all changes
git add .

# Commit with the message
git commit -m "$commit_message"

# Push to the current branch
git push origin $(git rev-parse --abbrev-ref HEAD)

echo "Changes pushed successfully!"
