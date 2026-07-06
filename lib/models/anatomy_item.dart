class AnatomyItem {
  final String name;
  final String type;
  final String region;
  final String image;
  final String overview;
  final String features;
  final String attachments;
  final String bloodSupply;
  final String nerveSupply;
  final String ossification;
  final String clinical;

  AnatomyItem({
    required this.name,
    required this.type,
    required this.region,
    required this.image,
    required this.overview,
    required this.features,
    required this.attachments,
    required this.bloodSupply,
    required this.nerveSupply,
    required this.ossification,
    required this.clinical,
  });

  factory AnatomyItem.fromJson(Map<String, dynamic> json) {
    return AnatomyItem(
      name: json["name"] ?? "",
      type: json["type"] ?? "",
      region: json["region"] ?? "",
      image: json["image"] ?? "",
      overview: json["overview"] ?? "",
      features: json["features"] ?? "",
      attachments: json["attachments"] ?? "",
      bloodSupply: json["bloodSupply"] ?? "",
      nerveSupply: json["nerveSupply"] ?? "",
      ossification: json["ossification"] ?? "",
      clinical: json["clinical"] ?? "",
    );
  }
}
