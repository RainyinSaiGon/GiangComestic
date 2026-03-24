# Getting Started

## Prerequisites
- Java 26 or higher
- Node.js 18 or higher
- Docker and Docker Compose
- Git
- A code editor (VS Code, IntelliJ IDEA, etc.)

## Local Development Setup

### 1. Clone the Repository
```bash
git clone <repository-url>
cd GiangComestic
```

### 2. Set Up Environment Variables
```bash
cp .env.example .env
# Edit .env with your local configuration
```

### 3. Start the Database
```bash
cd backend
docker-compose up -d
```

Verify PostgreSQL is running:
```bash
docker-compose logs postgres
```

### 4. Build and Run the Backend
```bash
cd backend
./gradlew bootRun
```

The backend API will be available at `http://localhost:8080`

### 5. Set Up Frontend (in a new terminal)
```bash
cd frontend
npm install
npm run dev
```

The frontend will be available at `http://localhost:3000`

## Verifying the Setup

### Backend Health Check
```bash
curl http://localhost:8080/health
```

### Frontend Check
Navigate to `http://localhost:3000` in your browser

## Common Commands

### Backend
```bash
cd backend

# Build the project
./gradlew build

# Run tests
./gradlew test

# Run with hot reload
./gradlew bootRun

# Clean build
./gradlew clean build
```

### Frontend
```bash
cd frontend

# Install dependencies
npm install

# Development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview

# Lint code
npm run lint
```

### Database
```bash
cd backend

# View logs
docker-compose logs -f postgres

# Stop services
docker-compose down

# Reset database
docker-compose down
docker-compose up -d
```

## Troubleshooting

### Port Already in Use
- Backend (8080): `lsof -ti:8080 | xargs kill -9`
- Frontend (3000): `lsof -ti:3000 | xargs kill -9`
- Database (5432): `lsof -ti:5432 | xargs kill -9`

### Database Connection Issues
- Ensure Docker is running
- Check PostgreSQL logs: `docker-compose logs postgres`
- Verify credentials in `.env` file

### Build Failures
- Clear Gradle cache: `./gradlew clean`
- Clear npm cache: `npm cache clean --force`

## Next Steps

1. Read the API Documentation: [docs/api/README.md](../api/README.md)
2. Review Architecture: [docs/architecture/README.md](../architecture/README.md)
3. Check Contributing Guidelines: [CONTRIBUTING.md](../../CONTRIBUTING.md)

