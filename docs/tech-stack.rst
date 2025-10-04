Technology Stack
================

This project uses modern technologies and tools for both frontend and backend development.

Backend Stack
-------------

Python Environment
^^^^^^^^^^^^^^^^^^

* **Python 3.13+** - Modern Python with latest features
* **uv** - Fast Python package installer and resolver
* **pyproject.toml** - Modern Python project configuration

Code Quality Tools
^^^^^^^^^^^^^^^^^^

* **Ruff** - Fast Python linter and formatter
  
  - 4-space indentation
  - Double quotes for strings
  - 100 character line length
  - Comprehensive linting rules (pycodestyle, pyflakes, isort, flake8-bugbear, etc.)

* **Pyright** - Static type checker for Python
  
  - Basic type checking mode
  - Strict type annotations required
  - Modern Python 3.13 type hints

* **Pre-commit hooks** - Automated code quality checks
  
  - ``ruff-format`` - Code formatting
  - ``ruff-check`` - Code linting
  - ``pyright`` - Type checking
  - ``prettier`` - Multi-language formatting
  - ``next-lint`` - Frontend linting

Testing Tools
^^^^^^^^^^^^^

* **pytest** - Testing framework
  
  - Test discovery in ``projects/backend/tests/``
  - Coverage reporting with ``pytest-cov``
  - Async test support with ``pytest-asyncio``

* **httpx** - HTTP client for API testing
* **pytest-cov** - Coverage reporting

Documentation Tools
^^^^^^^^^^^^^^^^^^^

* **Sphinx** - Documentation generator
* **sphinx-rtd-theme** - Read the Docs theme
* **sphinx-autodoc-typehints** - Automatic type hints in docs

Frontend Stack
--------------

Core Framework
^^^^^^^^^^^^^^

* **Next.js 15** - React framework with App Router
* **React 18** - UI library
* **TypeScript 5+** - Type-safe JavaScript

Styling
^^^^^^^

* **TailwindCSS 3** - Utility-first CSS framework
* **PostCSS** - CSS processing
* **Autoprefixer** - Automatic vendor prefixes

State Management & API
^^^^^^^^^^^^^^^^^^^^^^

* **@tanstack/react-query** - Server state management
* **axios** - HTTP client
* **orval** - OpenAPI client generator for type-safe API calls

Code Quality
^^^^^^^^^^^^

* **ESLint 9** - JavaScript/TypeScript linting
* **eslint-config-next** - Next.js specific rules
* **eslint-config-prettier** - Prettier integration
* **Prettier 3** - Code formatting

Development Tools
-----------------

Task Automation
^^^^^^^^^^^^^^^

* **just** - Command runner for development tasks
  
  - Simple, consistent interface for common tasks
  - Cross-platform support
  - Task grouping and documentation

Containerization
^^^^^^^^^^^^^^^^

* **Docker** - Container platform
* **Docker Compose** - Multi-container orchestration

Version Control
^^^^^^^^^^^^^^^

* **Git** - Version control
* **GitHub Actions** - CI/CD pipelines
* **GitHub Pages** - Documentation hosting

CI/CD Pipeline
--------------

The project uses GitHub Actions for continuous integration and deployment:

Frontend Pipeline
^^^^^^^^^^^^^^^^^

1. Checkout code
2. Set up Node.js 20
3. Install dependencies
4. Run ESLint for code quality

Backend Pipeline
^^^^^^^^^^^^^^^^

1. Checkout code
2. Set up Python 3.13
3. Install uv and sync dependencies
4. Run ruff linting
5. Run ruff format check
6. Run pytest tests
7. Generate coverage reports
8. Upload coverage to Codecov
9. Display coverage summary

Documentation Pipeline
^^^^^^^^^^^^^^^^^^^^^^

1. Build Sphinx documentation
2. Deploy to GitHub Pages
3. Trigger on docs changes or manual dispatch
