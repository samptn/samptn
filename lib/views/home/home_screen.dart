import 'package:flutter/material.dart';
import '/views/widgets/skills_components.dart';

import '../../styles/font_style.dart';

class ResumeHeaderWidget extends StatelessWidget {
  const ResumeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name and Role
          Row(
            children: [
              Text(
                "John Doe",
                style: AppFonts.nunito(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "| Software Developer",
                style: AppFonts.nunito(
                  fontSize: 22,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Contact Information
          Text(
            "123 Main Street, City, Country",
            style: AppFonts.nunito(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Email: johndoe@example.com",
            style: AppFonts.nunito(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Phone: (123) 456-7890",
            style: AppFonts.nunito(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),

          // Social Media Links
          Row(
            children: [
              _buildSocialIcon(
                'assets/icons/github.png',
                'https://github.com/johndoe',
              ),
              const SizedBox(width: 16),
              _buildSocialIcon(
                'assets/icons/linkedin.png',
                'https://linkedin.com/in/johndoe',
              ),
              const SizedBox(width: 16),
              _buildSocialIcon(
                'assets/icons/twitter.png',
                'https://twitter.com/johndoe',
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method for social icons
  Widget _buildSocialIcon(String assetPath, String url) {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        assetPath,
        width: 24,
        height: 24,
      ),
    );
  }
}

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tech Solutions Inc.",
          style: AppFonts.nunito(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "Flutter Developer",
          style: AppFonts.nunito(
            fontSize: 18,
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          "Jan 2021 - Dec 2023",
          style: AppFonts.nunito(color: Colors.grey),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            "Developed cross-platform applications using Flutter, ensuring high performance and responsiveness.",
            style: AppFonts.nunito(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "CodeCrafters Ltd.",
          style: AppFonts.nunito(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "Junior Developer",
          style: AppFonts.nunito(
            fontSize: 18,
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          "Jan 2019 - Dec 2020",
          style: AppFonts.nunito(
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            "Assisted in building mobile applications, fixing bugs, and maintaining code quality.",
            style: AppFonts.nunito(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class PortfolioApp extends StatelessWidget {
  final String? packageName;
  const PortfolioApp({
    super.key,
    this.packageName,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ResumeHeaderWidget(),
        const SkillsWidget(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ExperienceWidget(),
              Container(),
            ],
          ),
        ),
      ],
    );
  }
}
