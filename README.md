# GiangComestic

A modern full-stack application for cosmetics business management.

## Project Structure

```
GiangComestic/
├── backend/              # Spring Boot Java Backend
│   ├── src/             # Source code
│   ├── build.gradle     # Gradle configuration
│   └── compose.yaml     # Docker Compose for local development
├── frontend/            # Frontend Application (React/Vue/etc.)
│   ├── src/            # Frontend source code
│   └── public/         # Static assets
├── supabase/           # Supabase Configuration
│   ├── migrations/     # Database migrations
│   ├── functions/      # Edge functions
│   └── seeds/          # Seed data
├── .github/            # GitHub Configuration
│   ├── workflows/      # CI/CD workflows
│   └── ISSUE_TEMPLATE/ # Issue templates
├── docs/               # Documentation
│   ├── api/           # API documentation
│   ├── architecture/   # Architecture diagrams
│   └── guides/        # User and developer guides
├── tests/              # Test Suites
│   ├── integration/    # Integration tests
│   ├── e2e/          # End-to-end tests
│   └── performance/   # Performance tests
├── scripts/            # Build and deployment scripts
├── config/             # Shared configuration
└── shared/             # Shared utilities and constants
```

##  Quick Start

### Prerequisites
- Java 26+
- Node.js 18+ (for frontend)
- Docker & Docker Compose
- PostgreSQL (handled by Docker Compose)

### Backend Setup
```bash
cd backend
./gradlew bootRun
```

The backend will be available at `http://localhost:8080`

### Frontend Setup
```bash
cd frontend
npm install
npm start
```

### Database Setup
The project includes a Docker Compose configuration for PostgreSQL:
```bash
cd backend
docker-compose up -d
```

##  Documentation

See the [docs](./docs) folder for:
- [API Documentation](./docs/api)
- [Architecture Decisions](./docs/architecture)
- [Developer Guides](./docs/guides)

##  Testing

### Run All Tests
```bash
cd backend
./gradlew test
```

### Integration Tests
```bash
cd tests/integration
# Run integration tests
```

### E2E Tests
```bash
cd tests/e2e
# Run end-to-end tests
```

##  Tech Stack

### Backend
- **Framework**: Spring Boot 4.0.4
- **Database**: PostgreSQL with Spring Data JPA
- **AI**: OpenAI & Anthropic Claude integration
- **Modularity**: Spring Modulith
- **Build**: Gradle

### Frontend
- To be configured

### Database
- PostgreSQL with Supabase integration

## CI/CD

GitHub Actions workflows are configured in `.github/workflows/`:
- Build & Test on Push
- Deployment workflows
- Code Quality checks

## Contributing

1. Create a feature branch: `git checkout -b feature/your-feature`
2. Commit changes: `git commit -am 'Add new feature'`
3. Push to branch: `git push origin feature/your-feature`
4. Submit a pull request

## License

Specify your license here.

## Contact

For questions or support, reach out to the team.

