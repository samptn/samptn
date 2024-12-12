import 'package:flutter/material.dart';

import '../../styles/font_style.dart';

class ProjectsWidget extends StatelessWidget {
  final List<Project> projects;

  const ProjectsWidget({
    super.key,
    required this.projects,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            "Projects",
            style: AppFonts.nunito(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Projects List
          for (var project in projects) _buildProjectCard(project),
        ],
      ),
    );
  }

  // Helper method to create project card
  Widget _buildProjectCard(Project project) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Project Title
            Text(
              project.title,
              style: AppFonts.nunito(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Project Description
            Text(
              project.description,
              style: AppFonts.nunito(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),

            // Technologies Used
            Text(
              "Technologies: ${project.technologies.join(", ")}",
              style: AppFonts.nunito(fontSize: 14, color: Colors.blueGrey),
            ),
            const SizedBox(height: 8),

            // Project Link
            if (project.link.isNotEmpty)
              GestureDetector(
                onTap: () {
                  // Open the link in a browser
                  _launchURL(project.link);
                },
                child: Text(
                  "See Project",
                  style: AppFonts.nunito(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  // Helper method to open the project link
  void _launchURL(String url) {
    // You can use url_launcher package to open URLs in a browser
    // url_launcher.launch(url);
    print("Open URL: $url");
  }
}

class Project {
  final String title;
  final String description;
  final List<String> technologies;
  final String link;

  Project({
    required this.title,
    required this.description,
    required this.technologies,
    required this.link,
  });
}

List<Project> myProjects = [
  Project(
    title: "Flutter Mobile App",
    description: "A mobile app built with Flutter to manage tasks.",
    technologies: ["Flutter", "Dart", "SQLite"],
    link: "https://github.com/johndoe/flutter_task_manager",
  ),
  Project(
    title: "Personal Portfolio Website",
    description: "A portfolio website to showcase my work and skills.",
    technologies: ["HTML", "CSS", "JavaScript"],
    link: "https://johndoe.dev",
  ),
  Project(
    title: "E-commerce Backend",
    description:
        "Backend for an e-commerce website built with Node.js and MongoDB.",
    technologies: ["Node.js", "Express", "MongoDB"],
    link: "https://github.com/johndoe/ecommerce-backend",
  ),
];
