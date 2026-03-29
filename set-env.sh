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

# 3. UI API Configuration
# Public Host IP for the UI to connect to the APIs
export HOST_IP="http://143.244.139.120"
export CORE_API_URL="${HOST_IP}:8071/api/core/"
export USER_API_URL="${HOST_IP}:8071/api/userservice/"

# Output the current status
echo "----------------------------------------------------"
echo "Environment variables set:"
echo "GITHUB_REPOSITORY_LOWERCASE = $GITHUB_REPOSITORY_LOWERCASE"
echo "POSTGRES_USER                = $POSTGRES_USER"
echo "POSTGRES_PASSWORD            = [HIDDEN]"
echo "JWT_SECRET                   = [HIDDEN]"
echo "HOST_IP                      = $HOST_IP"
echo "CORE_API_URL                 = $CORE_API_URL"
echo "USER_API_URL                 = $USER_API_URL"
echo "----------------------------------------------------"
echo ""
echo "You can now run:"
echo "  docker-compose up -d"
echo ""
