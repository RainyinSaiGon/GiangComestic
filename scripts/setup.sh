#!/bin/bash

# Setup script for GiangComestic project
# This script initializes the development environment

set -e

echo "🚀 Setting up GiangComestic..."

# Check prerequisites
echo "📋 Checking prerequisites..."

if ! command -v java &> /dev/null; then
    echo "❌ Java is not installed. Please install Java 26 or higher."
    exit 1
fi

if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18 or higher."
    exit 1
fi

if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker."
    exit 1
fi

echo "✅ All prerequisites found"

# Setup environment
echo "🔧 Setting up environment..."

if [ ! -f .env ]; then
    cp .env.example .env
    echo "✅ Created .env file (please update with your configuration)"
else
    echo "✅ .env file already exists"
fi

# Setup backend
echo "🔨 Setting up backend..."

cd backend

if [ ! -d ".gradle" ]; then
    echo "📦 Building backend for the first time..."
    ./gradlew build -x test
else
    echo "✅ Backend gradle cache found"
fi

chmod +x gradlew

echo "✅ Backend setup complete"

cd ..

# Setup frontend
echo "🎨 Setting up frontend..."

cd frontend

if [ ! -d "node_modules" ]; then
    echo "📦 Installing frontend dependencies..."
    npm install
else
    echo "✅ Frontend dependencies already installed"
fi

echo "✅ Frontend setup complete"

cd ..

# Start database
echo "🗄️  Starting PostgreSQL..."

cd backend

docker-compose up -d

echo "⏳ Waiting for PostgreSQL to be ready..."
sleep 5

echo "✅ PostgreSQL is running"

cd ..

echo ""
echo "✨ Setup complete! You can now start developing."
echo ""
echo "📝 Next steps:"
echo "  1. Update .env with your configuration"
echo "  2. Run: cd backend && ./gradlew bootRun"
echo "  3. In another terminal: cd frontend && npm run dev"
echo ""
echo "📚 Documentation: See docs/ folder for more information"

