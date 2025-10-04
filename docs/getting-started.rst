Getting Started
===============

This guide will help you set up and run the project template.

Prerequisites
-------------

Before you begin, ensure you have the following installed:

* **Python 3.13 or higher** - `Download <https://www.python.org/downloads/>`_
* **uv** - Fast Python package installer - ``curl -LsSf https://astral.sh/uv/install.sh | sh``
* **Node.js 20+** - For frontend development - `Download <https://nodejs.org/>`_
* **just** (optional) - Command runner - `Installation guide <https://github.com/casey/just#installation>`_
* **Docker** (optional) - For containerization - `Installation guide <https://docs.docker.com/get-docker/>`_

Backend Setup
-------------

1. Clone the repository::

    git clone <repository-url>
    cd project-template

2. Install Python dependencies::

    uv sync --all-packages --all-groups

This will:
    - Create a virtual environment
    - Install all dependencies (dev, test, and docs groups)
    - Set up the workspace

3. Set up pre-commit hooks::

    uv run pre-commit install --config devops/.pre-commit-config.yaml

4. Verify the setup by running tests::

    uv run pytest projects/backend/tests -v

Frontend Setup
--------------

1. Navigate to the frontend directory::

    cd projects/frontend

2. Install Node.js dependencies::

    npm install

3. Run the development server::

    npm run dev

4. Open your browser and visit http://localhost:3000

You should see the project template homepage.

Project Structure
-----------------

::

    project-template/
    ├── .github/                 # GitHub configuration
    │   ├── workflows/          # CI/CD workflows
    │   └── copilot-instructions.md
    ├── devops/                  # DevOps configurations
    │   ├── ci/                 # Docker and CI configs
    │   └── .pre-commit-config.yaml
    ├── docs/                    # Sphinx documentation
    ├── projects/                # Project code
    │   ├── backend/            # Python backend (FastAPI)
    │   │   ├── api/           # API package
    │   │   ├── package/       # Backend package
    │   │   └── tests/         # Backend tests
    │   └── frontend/           # Next.js frontend
    │       └── src/           # Source code
    ├── pyproject.toml           # Python project configuration
    └── justfile                 # Task automation

Next Steps
----------

* Read the :doc:`development` guide to learn about development workflows
* Explore the :doc:`tech-stack` to understand the technologies used
* Check the :doc:`api/modules` for API reference

