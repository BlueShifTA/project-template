# Project Template

A comprehensive project template with modern development tooling and best practices.

## 🚀 Features

- **Modern Python tooling** with [uv](https://github.com/astral-sh/uv) for fast package management
- **Code quality** with [ruff](https://github.com/astral-sh/ruff) (linting & formatting) and [pyright](https://github.com/microsoft/pyright) (type checking)
- **Pre-commit hooks** for automated code quality checks
- **Task automation** with [just](https://github.com/casey/just)
- **Documentation** with [Sphinx](https://www.sphinx-doc.org/)
- **Containerization** with Docker
- **Testing** with pytest

## 📋 Tech Stack

- **Python 3.11+**
- **uv** - Fast Python package installer and resolver
- **just** - Command runner for task automation
- **Docker** - Containerization platform
- **Pre-commit hooks** with:
  - `ruff-format` - Code formatting
  - `ruff-check` - Code linting
  - `pyright` - Static type checking
  - `prettier` - Multi-language formatting
  - `next-lint` - Next.js/JavaScript linting

## 📁 Project Structure

```
project-template/
├── devops/                  # DevOps configurations
│   └── .pre-commit-config.yaml
├── docs/                    # Sphinx documentation
│   ├── conf.py
│   ├── index.rst
│   ├── getting-started.rst
│   ├── development.rst
│   └── api/
├── projects/                # Core project code
│   ├── __init__.py
│   ├── example.py
│   └── tests/
├── ci/                      # CI/CD and Docker configs
│   ├── Dockerfile
│   └── docker-compose.yml
├── pyproject.toml           # Project configuration
├── justfile                 # Task automation
└── README.md
```

## 🛠️ Prerequisites

Before you begin, ensure you have the following installed:

- Python 3.11 or higher
- [uv](https://github.com/astral-sh/uv) - `curl -LsSf https://astral.sh/uv/install.sh | sh`
- [just](https://github.com/casey/just) - See [installation instructions](https://github.com/casey/just#installation)
- Docker (optional, for containerization)

## 🚦 Quick Start

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd project-template
   ```

2. **Set up the development environment**:
   ```bash
   just setup
   ```
   This will:
   - Create a virtual environment
   - Install all dependencies (dev & docs)
   - Set up pre-commit hooks

3. **Verify the setup**:
   ```bash
   just test
   ```

## 📖 Common Tasks

List all available tasks:
```bash
just
```

### Development

- **Install dependencies**: `just install`
- **Run linters**: `just lint`
- **Format code**: `just format`
- **Type check**: `just typecheck`
- **Run all quality checks**: `just qa`

### Testing

- **Run tests**: `just test`
- **Run tests with coverage**: `just test-coverage`

### Documentation

- **Build documentation**: `just docs-build`
- **Serve documentation**: `just docs-serve` (then visit http://localhost:8000)

### Docker

- **Build Docker image**: `just docker-build`
- **Run Docker container**: `just docker-run`
- **Start services**: `just docker-compose-up`
- **Stop services**: `just docker-compose-down`

### Maintenance

- **Clean build artifacts**: `just clean`
- **Update pre-commit hooks**: `just update-hooks`
- **Show project info**: `just info`

## 🧪 Testing

Tests are located in `projects/tests/` and use pytest:

```bash
# Run all tests
just test

# Run with coverage report
just test-coverage

# Run specific test file
pytest projects/tests/test_example.py
```

## 📚 Documentation

Documentation is built with Sphinx and located in the `docs/` directory:

```bash
# Build documentation
just docs-build

# Serve documentation locally
just docs-serve
```

Then visit http://localhost:8000

## 🎨 Code Quality

This project uses multiple tools to ensure code quality:

- **ruff**: Fast Python linter and formatter
- **pyright**: Static type checker
- **pre-commit**: Automated pre-commit hooks
- **prettier**: Code formatter for various file types
- **eslint**: JavaScript/TypeScript linter

Pre-commit hooks run automatically before each commit. To run manually:

```bash
just lint
```

## 🐳 Docker

Build and run the project in Docker:

```bash
# Build the Docker image
just docker-build

# Run the container
just docker-run

# Use docker-compose for multiple services
just docker-compose-up
```

## 📝 Configuration Files

- `pyproject.toml` - Python project configuration (dependencies, tools)
- `justfile` - Task automation commands
- `devops/.pre-commit-config.yaml` - Pre-commit hooks configuration
- `ci/Dockerfile` - Docker image definition
- `ci/docker-compose.yml` - Docker compose services
- `docs/conf.py` - Sphinx documentation configuration
