#!/bin/bash

# Deploy script for GitHub Pages
echo "🚀 Starting deployment..."

# Build the project
echo "📦 Building project..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    
    # Create a backup of the current index.html
    echo "💾 Backing up development index.html..."
    cp index.html index.dev.html
    
    # Copy dist contents to root
    echo "📁 Copying production files to root..."
    cp -r dist/* .
    
    # Remove dist folder from root
    rm -rf dist
    
    # Add all files
    echo "📝 Adding files to git..."
    git add .
    
    # Commit deployment
    echo "💾 Committing deployment..."
    git commit -m "Deploy to GitHub Pages - $(date)"
    
    # Push to main
    echo "📤 Pushing to GitHub..."
    git push origin main
    
    # Restore development index.html
    echo "🔄 Restoring development setup..."
    mv index.dev.html index.html
    
    # Remove production assets from root
    echo "🧹 Cleaning up production files..."
    rm -rf assets favicon.ico
    
    # Commit the restoration
    echo "💾 Committing development restoration..."
    git add .
    git commit -m "Restore development setup"
    git push origin main
    
    echo "🎉 Deployment complete!"
    echo "📝 Your site will be available at: https://greentreeessentialz.github.io"
    echo "💡 Development environment is restored and ready for hot reload!"
    
else
    echo "❌ Build failed!"
    exit 1
fi 