import 'mixins.dart';
import 'dart:io';

void main() async {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  var x = mixero();
  var astronauts = x.astronauts;
  if (astronauts == 0) {
    throw StateError('No astronauts.');
  }

  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}
