Project Template
================

Welcome to the Project Template documentation!

This is a modern full-stack project template featuring Next.js, React, FastAPI, and Python with comprehensive development tools and best practices.

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   getting-started
   development
   tech-stack
   api/modules

Overview
--------

This template provides a solid foundation for building web applications with:

* **Full-stack architecture** - Next.js frontend with FastAPI backend
* **Modern Python tooling** - Python 3.13+ with uv package manager
* **Type-safe development** - TypeScript and Python type checking
* **Automated quality checks** - Pre-commit hooks, linting, and testing
* **CI/CD ready** - GitHub Actions workflows
* **Comprehensive documentation** - Sphinx with GitHub Pages

Quick Start
-----------

See :doc:`getting-started` for detailed setup instructions.

**Backend**::

    uv sync --all-packages --all-groups
    uv run pytest projects/backend/tests -v

**Frontend**::

    cd projects/frontend
    npm install
    npm run dev

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

