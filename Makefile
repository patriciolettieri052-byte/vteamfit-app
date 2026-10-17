# Interfaz única de verificación para humanos y agentes.
# El Arquitecto ajusta los comandos internos si el stack usa otras herramientas.

.PHONY: lint test lint-frontend lint-backend test-frontend test-backend

lint: lint-frontend lint-backend

test: test-frontend test-backend

lint-frontend:
	cd frontend && npm run lint

test-frontend:
	cd frontend && npm test

lint-backend:
	cd backend && ruff check .

test-backend:
	cd backend && pytest
