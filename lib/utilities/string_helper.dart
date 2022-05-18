import 'dart:math';

class StringHelper {
  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();

  // Generate a random string of the specified length.
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  // Set all characters in the string to upper case.
  String toUpperCase(String str) => str.toUpperCase();

  // Set all characters in the string to lower case.
  String toLowerCase(String str) => str.toLowerCase();
}
