class AnatomyItem {
  // =========================
  // Identity
  // =========================
  final String id;
  final String name;
  final String latinName;
  final String category;
  final String type;
  final String region;
  final String bodySystem;
  final String side;

  // =========================
  // Media
  // =========================
  final String image;

  // =========================
  // Main Content
  // =========================
  final String overview;
  final String features;
  final String attachments;
  final String bloodSupply;
  final String nerveSupply;
  final String ossification;
  final String clinical;

  // =========================
  // Future Fields
  // =========================
  final String function;
  final String surfaceAnatomy;
  final String development;
  final String relations;

  AnatomyItem({
    required this.id,
    required this.name,
    required this.latinName,
    required this.category,
    required this.type,
    required this.region,
    required this.bodySystem,
    required this.side,
    required this.image,
    required this.overview,
    required this.features,
    required this.attachments,
    required this.bloodSupply,
    required this.nerveSupply,
    required this.ossification,
    required this.clinical,
    required this.function,
    required this.surfaceAnatomy,
    required this.development,
    required this.relations,
  });

  factory AnatomyItem.fromJson(Map<String, dynamic> json) {
    return AnatomyItem(
      id: json["id"] ?? "",
      name: json["name"] ?? "",
      latinName: json["latinName"] ?? json["name"] ?? "",
      category: json["category"] ?? "Bone",
      type: json["type"] ?? "",
      region: json["region"] ?? "",
      bodySystem: json["bodySystem"] ?? "Skeletal System",
      side: json["side"] ?? "Unknown",
      image: json["image"] ?? "",
      overview: json["overview"] ?? "",
      features: json["features"] ?? "",
      attachments: json["attachments"] ?? "",
      bloodSupply: json["bloodSupply"] ?? "",
      nerveSupply: json["nerveSupply"] ?? "",
      ossification: json["ossification"] ?? "",
      clinical: json["clinical"] ?? "",
      function: json["function"] ?? "",
      surfaceAnatomy: json["surfaceAnatomy"] ?? "",
      development: json["development"] ?? "",
      relations: json["relations"] ?? "",
    );
  }
}
