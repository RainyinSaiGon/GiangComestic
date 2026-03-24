# End-to-End Tests

This directory contains end-to-end (E2E) tests for the application.

## Tools

- **Playwright** or **Cypress** for E2E testing
- Tests cover complete user workflows

## Structure

- `specs/` - Test specifications
- `fixtures/` - Test data and fixtures
- `pages/` - Page object models

## Running E2E Tests

```bash
# Install dependencies
npm install

# Run all E2E tests
npm run test:e2e

# Run tests in headed mode
npm run test:e2e:headed

# Run specific test file
npm run test:e2e -- filename.spec.ts
```

## Writing E2E Tests

Example using Playwright:

```typescript
test('User can complete a purchase', async ({ page }) => {
    await page.goto('http://localhost:3000');
    await page.click('[data-testid="add-to-cart"]');
    await page.click('[data-testid="checkout"]');
    // More test steps
});
```

