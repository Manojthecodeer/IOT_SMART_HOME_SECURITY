# IoT-Based Smart Home Security System
## Secure Software Engineering – 16 Phase Laboratory Project

This package contains a complete academic project scaffold designed around the supplied
Secure Software Engineering examination specification.

### Technology
- Frontend: HTML/CSS/JavaScript
- Backend: Node.js + Express
- Database: MySQL
- Authentication: JWT + bcrypt
- IoT: Node.js simulator
- Testing: Jest + Supertest
- Container: Docker
- Orchestration: Kubernetes/Minikube
- CI/CD: GitHub Actions

### Quick local setup
1. Install Node.js LTS, MySQL, Git and Docker Desktop.
2. Create the database using `database/schema.sql`.
3. Copy `backend/.env.example` to `backend/.env` and set local values.
4. Run:
   `cd backend`
   `npm install`
   `npm start`
5. Open `http://localhost:3000`.
6. For the IoT simulator:
   `cd iot-simulator`
   `npm install`
   `node simulator.js`
7. Run tests from `backend` with `npm test`.

### Docker
See `MANUAL_STEPS.md`. Docker credentials and local environment configuration must be
performed on the student's machine.

### Kubernetes
See `MANUAL_STEPS.md`. Minikube/Docker Desktop setup and actual deployment evidence must
be captured locally.

### Important
This package does not fabricate Jira/GitHub/Docker/Kubernetes screenshots. Those are manual
evidence items listed in `docs/evidence-checklist.md`.
