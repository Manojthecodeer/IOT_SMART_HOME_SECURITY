# ---- stage 1: production dependencies only (reproducible with package-lock.json) ----
FROM node:20-alpine AS deps
WORKDIR /app/backend
COPY backend/package*.json ./
RUN if [ -f package-lock.json ]; then npm ci --omit=dev --no-audit --no-fund; \
    else npm install --omit=dev --no-audit --no-fund; fi && npm cache clean --force

# ---- stage 2: minimal runtime image ----
FROM node:20-alpine
ENV NODE_ENV=production
WORKDIR /app
COPY --from=deps --chown=1000:1000 /app/backend/node_modules ./backend/node_modules
COPY --chown=1000:1000 backend/package.json ./backend/package.json
COPY --chown=1000:1000 backend/src ./backend/src
COPY --chown=1000:1000 backend/scripts ./backend/scripts
COPY --chown=1000:1000 frontend ./frontend
# Numeric non-root user (uid 1000 = built-in "node") so Kubernetes runAsNonRoot can verify it.
USER 1000:1000
EXPOSE 3000
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s \
  CMD wget -qO- http://127.0.0.1:3000/api/health || exit 1
CMD ["node", "backend/src/server.js"]
