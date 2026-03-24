# Integration Tests

This directory contains integration tests for the application.

## Structure

- `api/` - API integration tests
- `database/` - Database integration tests
- `services/` - Service layer integration tests

## Running Integration Tests

```bash
# From backend directory
./gradlew integrationTest

# From project root
cd backend && ./gradlew integrationTest
```

## Writing Integration Tests

Use JUnit 5 with TestContainers for integration tests:

```java
@SpringBootTest
class UserServiceIntegrationTest {
    
    @Autowired
    private UserService userService;
    
    @Test
    void shouldCreateUserSuccessfully() {
        // Test code
    }
}
```

