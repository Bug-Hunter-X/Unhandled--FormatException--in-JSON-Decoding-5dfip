# Dart JSON Decoding Error Handling

This repository demonstrates a common error in Dart when decoding JSON data from an API and provides a solution for more robust error handling.  The `bug.dart` file shows the initial code with inadequate error handling, while `bugSolution.dart` provides an improved version.

**Problem:** The original code only uses a general `catch` block, making it difficult to diagnose why JSON decoding failed.  If the server returns invalid JSON, a `FormatException` is thrown but not specifically handled.

**Solution:** The improved code distinguishes between general network errors and `FormatException` specifically to provide more precise error messages and debugging information. 