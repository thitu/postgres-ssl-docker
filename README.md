# postgres-ssl-docker

Docker container for latest PostgreSQL with (self-signed) SSL enabled.

## Usage

Build it...

```bash
docker build . -t postgres_ssl
```

Run it...

```bash
docker run -d \
  -e POSTGRES_HOST_AUTH_METHOD=trust \
  --name postgres \
  --publish 5432:5432 \
  postgres_ssl:latest \
  -c ssl=on \
  -c ssl_cert_file='/var/lib/postgresql/server.crt' \
  -c ssl_key_file='/var/lib/postgresql/server.key'
```

Verify it...

```bash
psql "sslmode=require host=localhost user=postgres"
```