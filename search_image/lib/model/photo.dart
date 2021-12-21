class Photo {
  final String previewURL;
  final String tags;

  Photo({required this.previewURL, required this.tags});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      previewURL: json['previewURL'],
      tags: json['tags'],
    );
  }

  @override
  String toString() {
    return 'Photo : ${this.previewURL}';
  }
}