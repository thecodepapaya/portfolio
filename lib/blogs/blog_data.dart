import 'package:portfolio/utils/constants.dart';

class BlogData {
  BlogData({
    required this.title,
    required this.description,
    required this.tags,
    required this.url,
    required this.read,
  }) {
    assert(description.length < Constants.charLimitCardDesc);
    tags.sort();
  }

  final String title;
  final String description;
  final List<String> tags;
  final String url;
  final int read;
}
