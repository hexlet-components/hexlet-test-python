install:
	@uv sync

lint:
	@uv run ruff check .
	@uv run ruff format --check .

test:
	@uv run pytest tests

check: install lint test

.PHONY: install lint test check
