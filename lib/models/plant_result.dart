class PlantResult {
  final String commonName;
  final String scientificName;
  final double confidence;

  final String description;

  final String watering;

  final String sunlight;

  final String soil;

  final String toxicity;

  const PlantResult({
    required this.commonName,
    required this.scientificName,
    required this.confidence,
    required this.description,
    required this.watering,
    required this.sunlight,
    required this.soil,
    required this.toxicity,
  });
}
