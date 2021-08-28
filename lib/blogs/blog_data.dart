class BlogData {
  BlogData({
    required this.title,
    required this.description,
    required this.tags,
    required this.url,
    required this.read,
  });

  final String title;
  final String description;
  final List<String> tags;
  final String url;
  final int read;
}
