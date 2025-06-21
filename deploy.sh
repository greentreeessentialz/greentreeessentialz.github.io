#!/bin/bash

# Deploy script for GitHub Pages
echo "🚀 Starting deployment..."

# Build the project
echo "📦 Building project..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    
    echo "📁 Production files created in dist/ folder"
    echo ""
    echo "🎯 For GitHub Pages deployment, you have 2 options:"
    echo ""
    echo "Option 1: GitHub Actions (Recommended)"
    echo "   Just commit and push your changes:"
    echo "   git add ."
    echo "   git commit -m 'Your changes'"
    echo "   git push origin main"
    echo ""
    echo "Option 2: Manual deployment"
    echo "   Copy dist/ contents to root and push:"
    echo "   cp -r dist/* ."
    echo "   git add ."
    echo "   git commit -m 'Deploy'"
    echo "   git push origin main"
    echo ""
    echo "💡 GitHub Actions will automatically build and deploy!"
else
    echo "❌ Build failed!"
    exit 1
fi 