# Package Maintenance

## Development Environment

First, [install uv](https://docs.astral.sh/uv/getting-started/installation/).

### Set up
    uv sync --extra dev
    uv tree

## Maintenance

### Code test
    uv run pytest

### Code lint
    uv run bin/lint.sh

### Build artifacts
    uv build

### Publish
    uv version --bump [major|minor|patch]
    V=v$(uv version --short) && git add pyproject.toml && git commit -m $V && git tag -a -m $V $V
    uv publish
