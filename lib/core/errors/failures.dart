class Failure {
  final String message;

  Failure({this.message = 'An Unexpected Error Occurred !'});

  @override
  String toString() => message;
}
