void main(List<String> args) {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}
