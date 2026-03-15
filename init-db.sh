#!/bin/bash
set -e

# Create databases and users required by the microservices
# This script will run automatically when the PostgreSQL container is first created

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE usermanagement;
    GRANT ALL PRIVILEGES ON DATABASE usermanagement TO "$POSTGRES_USER";
EOSQL

echo "Database 'usermanagement' created successfully."
