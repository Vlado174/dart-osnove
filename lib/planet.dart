class Planet {
  final String name;
  final double distanceAu;
  final int moons;
  final bool hasRings;
  final String? nickname;

  const Planet({
    required this.name,
    required this.distanceAu,
    required this.moons,
    this.hasRings = false,
    this.nickname
  });

  double get distanceKm => distanceAu * 149597870;

  void printDetails() {
  print("--- ${this.name} ---");
  print("Udaljenost: ${this.distanceAu} AJ; ${this.distanceKm} km");
  print("Mjeseci: ${this.moons}");
  print("Prstenovi: ${this.hasRings ? "da" : "ne"}");

 
}

class DwarfPlanet extends Planet {
  final int reclassifiedYear;

  const DwarfPlanet({
    required super.name,
    required super.distanceAu,
    required super.moons,
    required this.reclassifiedYear
  });

  void printDetails() {
    super.printDetails();
    print("Patuljasti planet od ${this.reclassifiedYear}");
  }
}