#!/bin/bash

set -e

echo "===================================="
echo " MkDocs Build + Git Push + Deploy "
echo "===================================="

# Check if we are inside a git repository

if [ ! -d ".git" ]; then
echo "Error: Not inside a git repository."
exit 1
fi

# Commit message

if [ -z "$1" ]; then
COMMIT_MSG="Documentation update $(date '+%Y-%m-%d %H:%M:%S')"
else
COMMIT_MSG="$1"
fi

echo ""
echo "Building MkDocs site..."
mkdocs build --clean

echo ""
echo "Checking Git status..."
git status

echo ""
echo "Adding changes..."
git add .

echo ""
echo "Committing changes..."
git commit -m "$COMMIT_MSG" || echo "Nothing to commit."

echo ""
echo "Pushing source branch..."
CURRENT_BRANCH=$(git branch --show-current)
git push origin $CURRENT_BRANCH

echo ""
echo "Deploying to GitHub Pages..."
mkdocs gh-deploy --clean

echo ""
echo "===================================="
echo "Deployment completed successfully!"
echo "===================================="
echo ""
echo "Current branch: $CURRENT_BRANCH"
echo ""
echo "Verify site at:"
echo "https://<your-github-username>.github.io/<repo-name>/"
echo ""
