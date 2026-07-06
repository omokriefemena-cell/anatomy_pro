class SearchResult {
  final String id;
  final String name;
  final String category;
  final String region;
  final String source;

  const SearchResult({
    required this.id,
    required this.name,
    required this.category,
    required this.region,
    required this.source,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return SearchResult(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      category: json['category'] ?? '',
      region: json['region'] ?? '',
      source: json['source'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'region': region,
      'source': source,
    };
  }
}
