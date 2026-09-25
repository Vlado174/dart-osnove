import 'package:dart_osnove/data.dart';
import 'package:dart_osnove/planet.dart';

void main() {
  printList(planets);
}

void printList(List<Planet> items) {
  print("Sunčev sustav (${items.length} stavki)");
  for (final planet in items) {
    planet.printDetails();
  }
}