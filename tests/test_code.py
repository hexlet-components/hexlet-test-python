from hexlet.test import expect_output


def test(capsys):
    expect_output(capsys, "Hello, World!")
