# Project Template

A modern full-stack project template with Next.js, React, FastAPI, and Python. This template provides a solid foundation for building web applications with best practices, modern tooling, and comprehensive documentation.

## ✨ Overview

This template is designed to be copied and customized for new projects. It includes:

- **Full-stack architecture** - Next.js frontend with FastAPI backend
- **Modern Python tooling** - Python 3.13+ with uv package manager
- **Type-safe development** - TypeScript and Python type checking
- **Automated quality checks** - Pre-commit hooks, linting, and testing
- **CI/CD ready** - GitHub Actions workflows for testing and deployment
- **Comprehensive documentation** - Sphinx documentation with GitHub Pages deployment

## 📁 Project Structure

```
project-template/
├── .github/                 # GitHub configuration
│   ├── workflows/          # CI/CD workflows
│   └── copilot-instructions.md
├── devops/                  # DevOps configurations
│   ├── ci/                 # Docker and CI configs
│   └── .pre-commit-config.yaml
├── docs/                    # Sphinx documentation
│   ├── conf.py
│   ├── index.rst
│   ├── getting-started.rst
│   ├── development.rst
│   ├── tech-stack.rst
│   └── api/
├── projects/                # Project code
│   ├── backend/            # Python backend (FastAPI)
│   │   ├── api/           # API package
│   │   ├── package/       # Backend package
│   │   └── tests/         # Backend tests
│   └── frontend/           # Next.js frontend
│       ├── src/           # Source code
│       └── public/        # Static assets
├── pyproject.toml           # Python project configuration
├── justfile                 # Task automation
└── README.md
```

## 🛠️ Prerequisites

- **Python 3.13+** - [Installation guide](https://www.python.org/downloads/)
- **uv** - Fast Python package manager - `curl -LsSf https://astral.sh/uv/install.sh | sh`
- **just** - Task automation - [Installation guide](https://github.com/casey/just#installation)
- **Node.js 20+** - For frontend development - [Installation guide](https://nodejs.org/)
- **Docker** (optional) - For containerization - [Installation guide](https://docs.docker.com/get-docker/)

## 🚀 Quick Start

### Backend Setup

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd project-template
   ```

2. **Install Python dependencies**:
   ```bash
   uv sync --all-packages --all-groups
   ```

3. **Set up pre-commit hooks**:
   ```bash
   uv run pre-commit install --config devops/.pre-commit-config.yaml
   ```

4. **Run tests**:
   ```bash
   uv run pytest projects/backend/tests -v
   ```

### Frontend Setup

1. **Navigate to frontend directory**:
   ```bash
   cd projects/frontend
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Run development server**:
   ```bash
   npm run dev
   ```

4. **Visit** http://localhost:3000

For more detailed information, see the [Getting Started Guide](docs/getting-started.rst) and [Development Guide](docs/development.rst).

## 📚 Documentation

Comprehensive documentation is available in the `docs/` directory:

- **[Getting Started](docs/getting-started.rst)** - Setup and installation
- **[Development Guide](docs/development.rst)** - Development workflow and tools
- **[Technology Stack](docs/tech-stack.rst)** - Detailed tech stack information
- **[API Reference](docs/api/modules.rst)** - API documentation

Build and view the documentation locally:

```bash
cd docs
pip install sphinx sphinx-rtd-theme sphinx-autodoc-typehints
sphinx-build -b html . _build/html
# Open _build/html/index.html in your browser
```

## 🤝 Contributing

This is a template repository. To use it:

1. Click "Use this template" on GitHub
2. Clone your new repository
3. Customize for your project
4. Remove or modify example code
5. Update documentation to match your project

For more information, see the [documentation](docs/).

## 📄 License

This template is provided as-is for you to use and modify as needed for your projects.
