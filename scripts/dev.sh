#!/bin/bash

# Development script to start all services
# Usage: ./scripts/dev.sh

echo "🚀 Starting GiangComestic development environment..."

# Start backend in background
echo "▶️  Starting backend (Spring Boot)..."
cd backend
./gradlew bootRun &
BACKEND_PID=$!
cd ..

# Give backend time to start
sleep 5

# Start frontend
echo "▶️  Starting frontend (React)..."
cd frontend
npm run dev &
FRONTEND_PID=$!
cd ..

echo ""
echo "✅ Services started!"
echo ""
echo "📍 Endpoints:"
echo "  Backend:  http://localhost:8080"
echo "  Frontend: http://localhost:3000"
echo ""
echo "Press Ctrl+C to stop all services"

# Handle Ctrl+C to stop both processes
trap "kill $BACKEND_PID $FRONTEND_PID 2>/dev/null; echo ''; echo '👋 Development environment stopped'; exit 0" INT

# Wait for both processes
wait $BACKEND_PID $FRONTEND_PID

