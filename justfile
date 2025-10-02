# Default recipe (runs when you just type 'just')
default:
    @just --list

# ==========================
# Install group
# ==========================

[group('install')]
install-pre-commit:
    uv run pre-commit install --config devops/.pre-commit-config.yaml

[group('install')]
install: install-pre-commit
    uv sync --all-packages
