/// Developer model class
class DevModels {
  final String name;
  final String number;
  final String email;
  final String bio;
  final List<String> hobbies;
  final List<SkillsAndProgress> skillsAndProgress;

  DevModels({
    required this.name,
    required this.number,
    required this.email,
    required this.bio,
    required this.hobbies,
    required this.skillsAndProgress,
  });
}

/// Skills and progress class
class SkillsAndProgress {
  final String name;
  final double progress;

  SkillsAndProgress({
    required this.name,
    required this.progress,
  });
}
