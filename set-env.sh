#!/bin/bash

echo "Setting up docker-compose environment variables..."


# 1. PostgreSQL Credentials
# Replace these with strong, secure credentials for production
export POSTGRES_USER="postgres"
# Generate a strong password, e.g., using `openssl rand -base64 32`
export POSTGRES_PASSWORD="ChangeMeInProduction123"

# 2. JWT Secret
# This should be a securely generated base64 string
# Example generation: `openssl rand -base64 64`
export JWT_SECRET=$(openssl rand -base64 64)

# Output the current status
echo "----------------------------------------------------"
echo "Environment variables set:"
echo "GITHUB_REPOSITORY_LOWERCASE = $GITHUB_REPOSITORY_LOWERCASE"
echo "POSTGRES_USER                = $POSTGRES_USER"
echo "POSTGRES_PASSWORD            = [HIDDEN]"
echo "JWT_SECRET                   = [HIDDEN]"
echo "----------------------------------------------------"
echo ""
echo "You can now run:"
echo "  docker-compose up -d"
echo ""
