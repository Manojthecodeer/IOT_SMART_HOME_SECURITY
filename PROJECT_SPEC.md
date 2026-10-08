# PROJECT SPECIFICATION – FROZEN BASELINE

## System
IoT-Based Smart Home Security System

## Actors
A-01 Homeowner
A-02 Home Administrator
A-03 IoT Device
A-04 Notification Service
A-05 Attacker (threat-modeling actor only)

## Devices
Smart Lock, Camera, Motion Sensor, Door Sensor, Smart Light, Temperature Sensor

## Core features
F-01 Login
F-02 Logout
F-03 Device Registration
F-04 Device Authentication
F-05 Device Status
F-06 Device Control
F-07 Camera Access
F-08 Sensor Telemetry
F-09 Automation Rules
F-10 Notifications
F-11 Security Monitoring
F-12 Audit Logging
F-13 User/Permission Management

## Main scenario
Motion detected after 11 PM -> automation engine validates rule -> security light ON ->
notification -> audit/security event.

## Permanent IDs
Requirements: FR/NFR/SR
Use cases: UC
DFD processes: DFD-P
Data stores: DS
Components: COMP
Assets: ASSET
Threats: T
Vulnerabilities: V
Attack-tree nodes: AT
User stories: US
Tasks: TASK
Tests: TEST
Controls: CTRL

## Technology
Node.js + Express, MySQL, JWT + bcrypt, HTML/CSS/JS, Jest/Supertest,
Docker, Kubernetes/Minikube, GitHub Actions.

## Change rule
Do not silently rename frozen IDs or introduce conflicting architecture.
Material changes must be recorded in CHANGELOG.md and TRACEABILITY_MATRIX.md.
