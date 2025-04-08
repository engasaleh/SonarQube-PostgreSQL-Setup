#!/bin/bash

# Create Docker network
docker network create sonarnet

# Start PostgreSQL
docker run -d --name postgres --network sonarnet \
  -e POSTGRES_USER=sonar \
  -e POSTGRES_PASSWORD=sonar \
  -e POSTGRES_DB=sonar \
  -v postgres_data:/var/lib/postgresql/data \
  postgres:13

# Start SonarQube
docker run -d --name sonarqube --network sonarnet \
  -p 9000:9000 \
  -e SONAR_JDBC_URL=jdbc:postgresql://postgres:5432/sonar \
  -e SONAR_JDBC_USERNAME=sonar \
  -e SONAR_JDBC_PASSWORD=sonar \
  -v sonarqube_data:/opt/sonarqube/data \
  sonarqube:community

echo "✅ SonarQube is running at http://localhost:9000"