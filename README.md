# Dockerized Flask Store App on Azure

![Dockerized Flask](Images/dockerized-Flask.png)

This repository hosts a **Dockerized Flask web store application** deployed on **Azure Container Apps**. The application demonstrates a lightweight, containerized Python web app running in the cloud, suitable for e-commerce demos or small-scale store prototypes.

---

## Overview

- **Framework:** Flask 2.3.3  
- **Server:** Gunicorn (production-ready WSGI server)  
- **Containerization:** Docker  
- **Cloud Deployment:** Azure Container Apps (with managed environment)
  ![Azure Deployment](Images/Azure_flask.png)

The app exposes a web interface for browsing products and simulates an online store experience, running entirely in a Docker container.

---

## Docker Setup

**Dockerfile:**

```dockerfile
# Use stable Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (default for Flask)
EXPOSE 5000

# Run app with Gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]

---

## Conclusion: Benefits of Dockerized Deployment

Using Docker to containerize the Flask store app brings several key benefits:

- **Portability:** The app runs consistently across all environments (local, staging, production) without configuration issues.
- **Reproducibility:** All dependencies and environment settings are encapsulated, eliminating “it works on my machine” problems.
- **Scalability:** Containers can be easily replicated or orchestrated on platforms like Azure Container Apps for load handling.
- **Efficiency for Teams:** Developers can spin up a new instance of the app without manually setting up Python, Flask, Gunicorn, or dependencies.

**Estimated time savings:**  

- Manually setting up a team environment (installing Python, Flask, dependencies, configuring servers) can take **2–4 hours per developer**.  
- Using Docker, this process is reduced to **less than 10–15 minutes**, saving roughly **85–90% of setup time**.  
- This allows teams to focus more on development, testing, and feature delivery instead of environment setup.

> Overall, Docker drastically reduces deployment friction, standardizes the workflow, and accelerates collaboration in a team environment.
