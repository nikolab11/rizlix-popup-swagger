#!/bin/bash

# Build the project
echo "Building Swagger UI..."
npm run build

# Copy necessary files to public directory
echo "Copying files to public directory..."
cp dist/swagger-ui-bundle.js public/
cp dist/swagger-ui.css public/
cp dist/swagger-ui-standalone-preset.js public/
cp dist/favicon-16x16.png public/
cp dist/favicon-32x32.png public/

# Ensure index.html exists and is up to date
if [ ! -f "public/index.html" ]; then
    echo "Creating index.html..."
    cp dist/index.html public/
fi

echo "Deployment files ready!"
echo "You can now deploy to Vercel with: vercel --prod"
