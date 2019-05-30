# postgres-ssl

Docker container for latest PostgreSQL with (self-signed) SSL enabled.

## Usage

Build the container...

```bash
docker build .
```

Run it...

```bash
./runner.sh
```

Verify it...

```bash
psql "sslmode=require host=localhost user=postgres"
```
