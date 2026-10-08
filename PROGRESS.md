# PROGRESS (work in progress snapshot)

DONE (code + infra, rewritten from the original scaffold)
- backend: repository layer (MySQL + in-memory), validators, automation engine, device auth, telemetry,
  camera authz, replay protection, logout/denylist, user mgmt, metrics, error handler, helmet/CSP, rate limits
- tests: unit (18 pass, verified), integration, e2e, fuzz (written, NOT yet run - needs `npm install` + `npm test`)
- frontend: 7 XSS-safe pages, simulator, schema.sql, hardening.sql
- Dockerfile, docker-compose (with MySQL), k8s (mysql, deployment, service, networkpolicy, deploy scripts), CI workflow, secret scan

NOT DONE YET
- docs/*.md, README.md, MANUAL_STEPS.md, TRACEABILITY_MATRIX.md, CHANGELOG.md still the ORIGINAL versions (stale: old SR numbering, old file paths)
- Diagrams (use case, ER, DFD with trust boundaries, architecture, attack tree, burndown, UI wireframes)
- Word report (16 phases, screenshot placeholders)
- Run `cd backend && npm install && npm test` locally and fix anything that fails
