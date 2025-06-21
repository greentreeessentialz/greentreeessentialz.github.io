#!/bin/bash

# Deploy script for GitHub Pages
echo "🚀 Starting deployment..."

# Build the project
echo "📦 Building project..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    
    # Copy dist contents to root (excluding dist folder itself)
    echo "📁 Copying files to root..."
    cp -r dist/* .
    
    # Remove dist folder from root
    rm -rf dist
    
    echo "🎉 Deployment ready!"
    echo "📝 Next steps:"
    echo "   1. git add ."
    echo "   2. git commit -m 'Deploy to GitHub Pages'"
    echo "   3. git push origin main"
else
    echo "❌ Build failed!"
    exit 1
fi 