class AnatomyItem {
  final String name;
  final String type;
  final String region;
  final String overview;

  AnatomyItem({
    required this.name,
    required this.type,
    required this.region,
    required this.overview,
  });

  factory AnatomyItem.fromJson(Map<String, dynamic> json) {
    return AnatomyItem(
      name: json["name"],
      type: json["type"],
      region: json["region"],
      overview: json["overview"],
    );
  }
}
