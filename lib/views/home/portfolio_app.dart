import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/resume_model.dart';
import '../../widgets/experience_widget.dart';
import '../../widgets/resume_header_widget.dart';
import '/views/widgets/project_widget.dart';
import '/views/widgets/qualification_widget.dart';
import '/views/widgets/skills_components.dart';

class PortfolioApp extends StatelessWidget {
  final String? packageName;
  const PortfolioApp({
    super.key,
    this.packageName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ResumeWidget(),
        ],
      ),
    );
  }
}

class ResumeWidget extends StatelessWidget {
  const ResumeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResumeHeaderWidget(
          basicInfo: resume.basicInfo,
        ),
        const SkillsWidget(),
        const QualificationWidget(),
        const ExperienceWidget(),
        ProjectsWidget(projects: myProjects)
      ],
    );
  }
}
