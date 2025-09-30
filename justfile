# Justfile - Task automation for the project template
# See https://github.com/casey/just for more information

# Default recipe (runs when you just type 'just')
default:
    @just --list

# Setup the development environment
setup:
    @echo "Setting up development environment..."
    uv venv
    uv pip install -e ".[dev,docs]"
    ln -sf devops/.pre-commit-config.yaml .pre-commit-config.yaml
    pre-commit install
    @echo "✓ Development environment ready!"

# Install dependencies using uv
install:
    @echo "Installing dependencies..."
    uv pip install -e ".[dev,docs]"

# Run pre-commit hooks on all files
lint:
    @echo "Running linters..."
    pre-commit run --all-files

# Run ruff format
format:
    @echo "Formatting code..."
    ruff format projects/

# Run ruff check
check:
    @echo "Checking code..."
    ruff check projects/ --fix

# Run pyright type checker
typecheck:
    @echo "Type checking..."
    pyright projects/

# Run all quality checks (lint, format, typecheck)
qa: format check typecheck lint

# Run tests with pytest
test:
    @echo "Running tests..."
    pytest projects/tests/

# Run tests with coverage
test-coverage:
    @echo "Running tests with coverage..."
    pytest --cov=projects --cov-report=html --cov-report=term

# Build Sphinx documentation
docs-build:
    @echo "Building documentation..."
    cd docs && sphinx-build -b html . _build/html

# Serve documentation locally
docs-serve:
    @echo "Serving documentation at http://localhost:8000"
    cd docs/_build/html && python -m http.server 8000

# Clean build artifacts
clean:
    @echo "Cleaning build artifacts..."
    rm -rf build/ dist/ *.egg-info
    rm -rf docs/_build/
    rm -rf .pytest_cache/ .coverage htmlcov/
    find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
    find . -type f -name "*.pyc" -delete

# Docker commands
docker-build:
    @echo "Building Docker image..."
    docker build -f ci/Dockerfile -t project-template:latest .

docker-run:
    @echo "Running Docker container..."
    docker run -it --rm project-template:latest

docker-compose-up:
    @echo "Starting services with docker-compose..."
    docker-compose -f ci/docker-compose.yml up -d

docker-compose-down:
    @echo "Stopping services..."
    docker-compose -f ci/docker-compose.yml down

# Update pre-commit hooks
update-hooks:
    @echo "Updating pre-commit hooks..."
    pre-commit autoupdate

# Show project info
info:
    @echo "Project: project-template"
    @echo "Python: $(python --version)"
    @echo "UV: $(uv --version)"
    @echo "Just: $(just --version)"
