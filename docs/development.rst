Development Guide
=================

This guide covers the development workflow, tools, and best practices for working with this project.

Development Workflow
--------------------

Backend Development
^^^^^^^^^^^^^^^^^^^

**Running tests**::

    uv run pytest projects/backend/tests -v

**With coverage**::

    uv run pytest projects/backend/tests --cov=projects/backend/api --cov-report=term

**Linting and formatting**::

    uv run ruff check projects/backend
    uv run ruff format projects/backend

**Type checking**::

    uv run pyright projects/backend

Frontend Development
^^^^^^^^^^^^^^^^^^^^

**Development server**::

    cd projects/frontend
    npm run dev

**Linting**::

    npm run lint

**Format code**::

    npm run prettify

**Build for production**::

    npm run build

Code Quality
------------

This project uses multiple tools to ensure code quality across both backend and frontend.

Backend Tools
^^^^^^^^^^^^^

**Ruff** - Fast Python linter and formatter

* Format code: ``uv run ruff format projects/backend``
* Check code: ``uv run ruff check projects/backend --fix``
* Configuration in ``pyproject.toml``

**Pyright** - Static type checker

* Type check: ``uv run pyright projects/backend``
* Ensures type safety across the backend

Frontend Tools
^^^^^^^^^^^^^^

**ESLint** - JavaScript/TypeScript linter

* Run linting: ``npm run lint``
* Configuration in ``.eslintrc.json``

**Prettier** - Code formatter

* Format code: ``npm run prettify``
* Check formatting: ``npm run prettier``

Pre-commit Hooks
^^^^^^^^^^^^^^^^

Pre-commit hooks run automatically before each commit to ensure code quality:

* ``ruff-check`` - Lints Python code
* ``ruff-format`` - Formats Python code
* ``pyright`` - Type checks Python code
* ``prettier`` - Formats various file types
* ``next-lint`` - Lints JavaScript/TypeScript files

**Install hooks**::

    uv run pre-commit install --config devops/.pre-commit-config.yaml

**Run manually**::

    uv run pre-commit run --all-files --config devops/.pre-commit-config.yaml

Testing
-------

Backend Testing
^^^^^^^^^^^^^^^

Tests are located in ``projects/backend/tests/`` and use pytest.

**Writing Tests**

Create test files with the ``test_`` prefix::

    # projects/backend/tests/test_example.py
    def test_something() -> None:
        """Test description."""
        assert True

**Running Tests**

* Run all tests: ``uv run pytest projects/backend/tests -v``
* With coverage: ``uv run pytest projects/backend/tests --cov=projects/backend/api``
* Specific test: ``uv run pytest projects/backend/tests/test_example.py``

Frontend Testing
^^^^^^^^^^^^^^^^

Frontend tests can be added using React Testing Library and Jest (to be configured as needed).

API Integration
---------------

The frontend can generate type-safe API clients from the backend OpenAPI specification.

**Generate API client**::

    cd projects/frontend
    npm run api

This will:

1. Download the OpenAPI spec from the running backend (http://localhost:8000/api/openapi.json)
2. Generate TypeScript types and API client using orval

Docker
------

Build and run the project in Docker containers.

**Build image**::

    cd devops/ci
    docker build -t project-template .

**Docker Compose**::

    cd devops/ci
    docker-compose up

Documentation
-------------

Documentation is built with Sphinx and uses reStructuredText format.

Building Documentation
^^^^^^^^^^^^^^^^^^^^^^

**Install dependencies**::

    uv pip install --system sphinx sphinx-rtd-theme sphinx-autodoc-typehints

**Build HTML**::

    cd docs
    sphinx-build -b html . _build/html

**View locally**

Open ``docs/_build/html/index.html`` in your browser.

Adding Documentation
^^^^^^^^^^^^^^^^^^^^

1. Create ``.rst`` files in the ``docs/`` directory
2. Add them to the ``toctree`` in ``index.rst``
3. Rebuild the documentation

CI/CD Pipeline
--------------

The project uses GitHub Actions for continuous integration and deployment.

**CI/CD Workflow** (``.github/workflows/ci.yml``)

* Frontend linting with ESLint
* Backend linting with ruff
* Backend testing with pytest
* Coverage reporting with Codecov

**Documentation Workflow** (``.github/workflows/docs.yml``)

* Builds Sphinx documentation
* Deploys to GitHub Pages
* Triggers on docs changes or manual dispatch

See :doc:`tech-stack` for more details on the CI/CD pipeline.

