install:
	@uv sync

lint:
	@uv run ruff check .

test:
	@uv run pytest tests

check: install lint test

.PHONY: install lint test check
