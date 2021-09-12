import 'package:portfolio/utils/constants.dart';

class ProjectData {
  ProjectData({
    required this.title,
    required this.description,
    required this.gitHub,
    required this.link,
    this.technologies = const [],
  }) {
    assert(description.length < Constants.charLimitCardDesc);
    technologies.sort();
  }

  final String title;
  final String description;
  final String gitHub;
  final String link;
  final List<String> technologies;
}
