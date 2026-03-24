# Contributing to GiangComestic

Thank you for your interest in contributing! This document provides guidelines for contributing to the project.

## Code of Conduct

Be respectful, inclusive, and professional in all interactions.

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone <your-fork>`
3. Add upstream: `git remote add upstream <repository-url>`
4. Create a branch: `git checkout -b feature/your-feature`

## Development Guidelines

### Code Style

#### Backend (Java)
- Follow Google Java Style Guide
- Use meaningful variable names
- Add JavaDoc comments for public methods
- Keep methods small and focused

#### Frontend (TypeScript/React)
- Follow Airbnb JavaScript Style Guide
- Use TypeScript for type safety
- Component files should be in PascalCase
- Style files should match component names

### Commit Messages

Use clear, descriptive commit messages:

```
[TYPE] Brief description

Detailed explanation if needed.

- Point 1
- Point 2

Fixes #issue-number (if applicable)
```

Types: `[FEAT]`, `[FIX]`, `[DOCS]`, `[STYLE]`, `[REFACTOR]`, `[TEST]`, `[CHORE]`

### Branching

Branch naming conventions:
- `feature/description` - New features
- `fix/description` - Bug fixes
- `docs/description` - Documentation updates
- `refactor/description` - Code refactoring

## Testing

### Before Submitting a PR

1. **Backend Tests**
   ```bash
   cd backend
   ./gradlew test
   ```

2. **Frontend Tests**
   ```bash
   cd frontend
   npm test
   ```

3. **Linting**
   ```bash
   cd backend
   ./gradlew lint
   
   cd frontend
   npm run lint
   ```

### Writing Tests

- Aim for >80% code coverage
- Test edge cases and error scenarios
- Use meaningful test names that describe the scenario

## Pull Request Process

1. **Create a descriptive PR title**: `[TYPE] Brief description`
2. **Fill out the PR template**: Include what changed, why, and testing done
3. **Ensure CI passes**: All GitHub Actions checks must pass
4. **Request reviews**: Assign reviewers for the change
5. **Address feedback**: Respond to review comments and make changes
6. **Squash commits** if requested during review

## Reporting Issues

When reporting issues:

1. Check if the issue already exists
2. Include steps to reproduce
3. Provide expected vs actual behavior
4. Attach screenshots/logs if applicable
5. Mention your environment (OS, Java/Node version, etc.)

## Questions?

- Check existing issues and discussions
- Start a new discussion for questions
- Reach out to the maintainers

## License

By contributing, you agree that your contributions will be licensed under the project's license.

