class SourceData {
  final String id;
  final String name;

  const SourceData({
    required this.id,
    required this.name,
  });

  factory SourceData.fromJson(Map<String, dynamic> json) => SourceData(
        id: json["id"],
        name: json["name"],
      );
}
