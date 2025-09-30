"""
Example module demonstrating the project structure.
"""


def hello(name: str = "World") -> str:
    """
    Return a greeting message.

    Args:
        name: The name to greet. Defaults to "World".

    Returns:
        A greeting message string.

    Examples:
        >>> hello()
        'Hello, World!'
        >>> hello("Python")
        'Hello, Python!'
    """
    return f"Hello, {name}!"
