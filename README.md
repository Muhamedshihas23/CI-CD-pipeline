CI/CD Pipeline Using Jenkins, Docker & Docker Compose

This project demonstrates a complete CI/CD pipeline built using Jenkins, Docker, Docker Hub, and Docker Compose. The pipeline automatically builds, publishes, and deploys a Python application whenever changes are pushed to GitHub.

 Project Overview

This pipeline performs the following steps:

Pulls the latest code from GitHub

Builds a Docker image for the application

Authenticates and pushes the image to Docker Hub

Deploys the updated container using Docker Compose

This setup ensures that every code change is automatically tested, built, containerized, and deployed with zero manual steps.

 Project Structure
.
├── Jenkinsfile
├── docker-compose.yml
├── app.py
└── requirements.txt

 Technologies Used

Jenkins – CI/CD Automation

Docker – Containerization

Docker Hub – Image Registry

Docker Compose – Deployment

GitHub – Source Code Management

Python (Flask) – Web Application

 Jenkins Pipeline Stages
🟦 1. Clone Code

Jenkins pulls the latest code from GitHub.

🟩 2. Build Docker Image

Creates a Docker image using the project’s Dockerfile.

🟧 3. Login to Docker Hub

Authenticates securely using Jenkins Credentials.

🟨 4. Push Image

Pushes the tagged image to Docker Hub registry.

🟥 5. Deploy with Docker Compose

Stops running containers and deploys the latest image.

 How to Run the Pipeline

Push changes to GitHub

Jenkins triggers automatically or manually

Pipeline executes all stages

The updated application becomes available instantly

 Access the Application

If mapped to port 8081:

http://localhost:8081

 Result

✔ Fully automated CI/CD
✔ Repeatable deployments
✔ Docker-based environment consistency
✔ Production-style pipeline for DevOps practice
