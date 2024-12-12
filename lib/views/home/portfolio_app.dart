import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/portfolio_app_bloc.dart';
import '/models/resume_model.dart';
import '../../widgets/experience_widget.dart';
import '../../widgets/resume_header_widget.dart';
import '/views/widgets/project_widget.dart';
import '/views/widgets/qualification_widget.dart';
import '/views/widgets/skills_components.dart';

class PortfolioApp extends StatefulWidget {
  final String? packageName;
  const PortfolioApp({
    super.key,
    this.packageName,
  });

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {


@override
  void initState() {
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BlocBuilder<PortfolioAppBloc, PortfolioAppState>(
            builder: (context, state) {
              if (state is ResumeState) {
                return ResumeWidget(
                  resume: state.resume,
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}

class ResumeWidget extends StatelessWidget {
  final Resume resume;
  const ResumeWidget({super.key, required this.resume});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResumeHeaderWidget(
          basicInfo: resume.basicInfo,
        ),
        SkillsWidget(
          skills: resume.skills,
        ),
        QualificationWidget(
          qualifications: resume.qualifications,
        ),
        ExperienceWidget(
          experiences: resume.experiences,
        ),
        ProjectsWidget(projects: myProjects)
      ],
    );
  }
}
