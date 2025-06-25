/// Enum representing named routes in the application.
enum Routes {
  /// Route for the main screen.
  mainScreen('main-screen');

  const Routes(this.name);

  /// The string representation of the route path.
  final String name;

  @override
  String toString() => name;
}
