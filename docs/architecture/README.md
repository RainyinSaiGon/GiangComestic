# Architecture

## System Architecture

### Overview
GiangComestic is built as a monorepo with a clear separation of concerns:

```
┌─────────────────────────────────────────────────────────────┐
│                     Frontend (React)                         │
│                  (Port: 3000)                                │
└────────────────────┬────────────────────────────────────────┘
                     │
                     │ HTTP/REST API
                     │
┌────────────────────┴────────────────────────────────────────┐
│                Spring Boot Backend                           │
│                 (Port: 8080)                                 │
│  • Controllers                                               │
│  • Business Logic (Services)                                 │
│  • Spring Modulith Architecture                              │
│  • AI Integration (OpenAI, Anthropic)                        │
└────────────────────┬────────────────────────────────────────┘
                     │
                     │ JDBC
                     │
┌────────────────────┴────────────────────────────────────────┐
│           PostgreSQL Database                                │
│        (with Supabase integration)                           │
│                 (Port: 5432)                                 │
└─────────────────────────────────────────────────────────────┘
```

### Frontend Architecture
- **Framework**: React with TypeScript
- **Build Tool**: Vite
- **State Management**: TBD
- **Styling**: TBD
- **API Client**: Axios

### Backend Architecture
- **Framework**: Spring Boot 4.0.4
- **Modularity**: Spring Modulith for bounded contexts
- **ORM**: Spring Data JPA with Hibernate
- **Database**: PostgreSQL
- **AI Services**: OpenAI & Anthropic Claude integration
- **Build**: Gradle

### Database Architecture
- **Primary**: PostgreSQL
- **Schema Management**: Liquibase/Flyway migrations
- **Integration**: Supabase for additional services

## Module Structure

### Bounded Contexts (Spring Modulith)
Each module represents a bounded context in the domain:

1. **Product Module** - Product catalog management
2. **Order Module** - Order processing
3. **Customer Module** - Customer management
4. **AI Module** - AI-powered features

## API Layer
- REST endpoints following RESTful conventions
- JSON request/response format
- Proper HTTP status codes and error handling

## Security
- JWT-based authentication
- Role-based access control (RBAC)
- Input validation and sanitization
- SQL injection prevention (JPA)

## CI/CD Pipeline
- GitHub Actions workflows
- Automated testing on PR
- Build artifacts
- Deployment automation

