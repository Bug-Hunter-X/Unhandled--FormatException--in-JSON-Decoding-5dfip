```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = jsonDecode(response.body);
      print(jsonData['name']); // Example: Accessing a specific field
    } else {
      // Handle errors
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); // Catching general exceptions
  }
}
```