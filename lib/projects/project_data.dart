class ProjectData {
  ProjectData({
    required this.title,
    required this.description,
    required this.gitHub,
    required this.link,
    this.technologies = const [],
  }) : assert(description.length < 120);

  final String title;
  final String description;
  final String gitHub;
  final String link;
  final List<String> technologies;
}
