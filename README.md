# hexlet-test

Pytest-утилита для тестирования упражнений на Hexlet. Предоставляет функцию `expect_output`, которая запускает решение студента и проверяет его вывод в stdout.

## Установка

```toml
# pyproject.toml упражнения
dependencies = [
  "hexlet-test @ git+https://github.com/hexlet-components/hexlet-test-python.git"
]
```

## Использование

### Проверка точного вывода

```python
# test_code.py
from hexlet.test import expect_output

def test(capsys):
    expect_output(capsys, "Hello, World!")
```

Функция импортирует `index.py` из директории упражнения, захватывает stdout и сравнивает с ожидаемым значением.

### Проверка многострочного вывода

```python
def test(capsys):
    expect_output(capsys, "line one\nline two\nline three")
```

### Проверка через функцию-валидатор

Если логика проверки сложнее точного совпадения, можно передать функцию:

```python
def test(capsys):
    def check(actual):
        assert "error" not in actual.lower()
        assert len(actual) > 0

    expect_output(capsys, check)
```

## Структура упражнения

```
exercise/
├── index.py        ← решение студента (импортируется автоматически)
└── test_code.py    ← тест с expect_output
```
