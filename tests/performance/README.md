# Performance Tests

This directory contains performance and load tests for the application.

## Tools

- **JMH** for Java performance benchmarks
- **k6** for load testing
- **Gatling** for stress testing (optional)

## Structure

- `benchmarks/` - JMH benchmarks
- `load-tests/` - Load test scripts
- `reports/` - Test reports

## Running Performance Tests

### Java Benchmarks
```bash
cd backend
./gradlew jmh
```

### Load Tests
```bash
k6 run performance-tests/load-test.js
```

## Performance Metrics to Track

- Response time (p50, p95, p99)
- Throughput (requests/second)
- Error rate
- Resource usage (CPU, memory)

