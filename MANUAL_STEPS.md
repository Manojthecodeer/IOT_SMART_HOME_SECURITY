# MANUAL STEPS / EVIDENCE GUIDE

The source code and configuration can be generated, but the following activities must be
performed on your own machine because they require your accounts, credentials, local
services or real execution evidence.

## 1. Install prerequisites
Install:
- Node.js LTS
- MySQL Server/MySQL Workbench
- Git
- Docker Desktop
- kubectl
- Minikube
- Optional: draw.io desktop/web
- Jira account
- GitHub account

## 2. MySQL connection
1. Start MySQL.
2. Open MySQL Workbench.
3. Open `database/schema.sql`.
4. Execute it.
5. Create backend `.env` from `.env.example`.
6. Put your own DB username/password.
7. Never commit `.env`.

## 3. Run application locally
1. `cd backend`
2. `npm install`
3. `npm start`
4. Open `http://localhost:3000`.

## 4. Run IoT simulator
Open another terminal:
1. `cd iot-simulator`
2. `npm install`
3. `node simulator.js`

Capture evidence of telemetry and automation.

## 5. Git/GitHub
1. Create a private GitHub repository.
2. Run `git init`.
3. Add remote.
4. Commit.
5. Push.
6. Enable branch protection if available.
7. Do not upload `.env`.

## 6. Jira
1. Create a Scrum project.
2. Create the listed epics/stories from `docs/phase09-backlog-jira.md`.
3. Create Sprint 1 and Sprint 2.
4. Move issues through TO DO -> IN PROGRESS -> TESTING -> DONE.
5. Capture screenshots of board, sprint, burndown, velocity and review.

## 7. Docker Desktop
1. Start Docker Desktop.
2. From project root:
   `docker build -t smarthome-security:1.0 .`
3. Run with appropriate environment variables.
4. Verify container with `docker ps`.
5. Capture screenshot.
6. Never put real secrets in Dockerfile.

## 8. MySQL with Docker
For the easiest student setup, use local MySQL first. If using Docker MySQL, configure the
database environment explicitly and use a persistent volume.

## 9. Kubernetes / Minikube
1. Start Docker Desktop.
2. Run `minikube start --driver=docker`.
3. Run `kubectl apply -f k8s/namespace.yaml`.
4. Create your own secret values locally; do not commit real credentials.
5. Apply ConfigMap/Secret/Deployment/Service.
6. Check `kubectl get pods -n smarthome`.
7. Check `kubectl get svc -n smarthome`.
8. Use `minikube service smarthome-backend -n smarthome`.
9. Capture pod/service/deployment evidence.

## 10. GitHub Actions
1. Push the repository.
2. Open Actions.
3. Confirm workflow execution.
4. Fix dependency/test issues if shown.
5. Capture successful workflow evidence.

## 11. Security demonstrations
Only test the local application:
- Unauthorized device command -> expected 403
- Replay old nonce -> expected rejection
- Invalid device credential -> expected rejection
- Unauthorized camera access -> expected 403
- Invalid automation payload -> expected validation error

Capture request/response and application logs.

## 12. Draw.io
Recreate or import the Mermaid/diagram descriptions in `docs/diagrams`.
Export final diagrams as PNG/PDF and include them in your report.

## 13. What ChatGPT/Claude cannot truthfully manufacture
- Your actual Jira screenshots
- Your GitHub account history
- Your Docker Desktop runtime screenshot
- Your Minikube runtime screenshot
- Your actual CI/CD execution screenshot
- Your local MySQL connection screenshot
- Your actual test run screenshot

These must be captured after you run them.
