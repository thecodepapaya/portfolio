class ExperienceData {
  ExperienceData({
    required this.organizationName,
    required this.position,
    required this.description,
    required this.startYearMonth,
    required this.endYearMonth,
  }) : assert(description.length < 120);

  final String organizationName;
  final String position;
  final String description;
  final String startYearMonth;
  final String endYearMonth;
}
