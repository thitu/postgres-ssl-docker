FROM postgres:latest

COPY ssl/server.crt /var/lib/postgresql
COPY ssl/server.key /var/lib/postgresql

RUN chmod 400 /var/lib/postgresql/server.*
RUN chown postgres /var/lib/postgresql/server.*

