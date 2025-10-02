Getting Started
===============

Prerequisites
-------------

Before you begin, ensure you have the following installed:

* Python 3.13 or higher
* `uv <https://github.com/astral-sh/uv>`_ - Fast Python package installer
* `just <https://github.com/casey/just>`_ - Command runner
* Docker (optional, for containerization)

Setup
-----

1. Clone the repository::

    git clone <repository-url>
    cd project-template

2. Set up the development environment::

    just setup

This will:
    - Create a virtual environment
    - Install all dependencies
    - Set up pre-commit hooks

Project Structure
-----------------

::

    project-template/
    ├── devops/              # DevOps configurations
    │   └── .pre-commit-config.yaml
    ├── docs/                # Sphinx documentation
    ├── projects/            # Core project code
    ├── ci/                  # CI/CD and Docker configs
    ├── pyproject.toml       # Project configuration
    └── justfile             # Task automation

Next Steps
----------

* Read the :doc:`development` guide
* Explore the :doc:`api/modules` reference
