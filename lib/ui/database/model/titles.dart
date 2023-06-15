class Titles {
  String? title;
  String? content;

  String? images;

  Titles({required this.title, required this.content, required this.images});

  factory Titles.fromMap(Map<dynamic, dynamic> map) {
    return Titles(
        title: map['title'], content: map['content'], images: map['images']);
  }

  Map<String, dynamic> toMap() => {
        "title": title,
        'content': content,
        "images": images,
      };
}
