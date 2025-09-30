Development Guide
=================

Development Workflow
--------------------

Common Tasks
^^^^^^^^^^^^

Use the ``just`` command runner for common development tasks:

* **List all tasks**::

    just

* **Run linters**::

    just lint

* **Format code**::

    just format

* **Type check**::

    just typecheck

* **Run all quality checks**::

    just qa

* **Run tests**::

    just test

* **Run tests with coverage**::

    just test-coverage

* **Build documentation**::

    just docs-build

* **Clean artifacts**::

    just clean

Code Quality
------------

This project uses multiple tools to ensure code quality:

Ruff
^^^^

Ruff is used for both linting and formatting Python code.

* **Format code**: ``ruff format projects/``
* **Check code**: ``ruff check projects/ --fix``

Pyright
^^^^^^^

Pyright provides static type checking.

* **Type check**: ``pyright projects/``

Pre-commit Hooks
^^^^^^^^^^^^^^^^

Pre-commit hooks run automatically before each commit:

* ``ruff-check`` - Lints Python code
* ``ruff-format`` - Formats Python code
* ``pyright`` - Type checks Python code
* ``prettier`` - Formats various file types
* ``next-lint`` - Lints JavaScript/TypeScript files

Run manually with::

    pre-commit run --all-files

Testing
-------

Tests are located in ``projects/tests/`` and use pytest.

Writing Tests
^^^^^^^^^^^^^

Create test files with the ``test_`` prefix::

    # projects/tests/test_example.py
    def test_something():
        assert True

Running Tests
^^^^^^^^^^^^^

* **Run all tests**: ``just test``
* **With coverage**: ``just test-coverage``
* **Specific test**: ``pytest projects/tests/test_example.py``

Docker
------

Build and run the project in Docker containers:

* **Build image**: ``just docker-build``
* **Run container**: ``just docker-run``
* **Start services**: ``just docker-compose-up``
* **Stop services**: ``just docker-compose-down``

Documentation
-------------

Documentation is built with Sphinx and uses reStructuredText format.

Building Docs
^^^^^^^^^^^^^

* **Build**: ``just docs-build``
* **Serve locally**: ``just docs-serve``

Then visit http://localhost:8000

Adding Documentation
^^^^^^^^^^^^^^^^^^^^

1. Create ``.rst`` files in the ``docs/`` directory
2. Add them to the ``toctree`` in ``index.rst``
3. Rebuild the documentation
