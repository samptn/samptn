import 'package:flutter/material.dart';

import '../../styles/font_style.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            "Skills",
            style: AppFonts.nunito(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Technical Skills
          _buildSkillCategory(
            "Programming Languages",
            [
              _buildSkillChip("Flutter"),
              _buildSkillChip("Dart"),
              _buildSkillChip("Kotlin"),
              _buildSkillChip("Java"),
            ],
          ),
          const SizedBox(height: 16),

          _buildSkillCategory(
            "Web Technologies",
            [
              _buildSkillChip("HTML"),
              _buildSkillChip("CSS"),
              _buildSkillChip("JavaScript"),
              _buildSkillChip("React"),
            ],
          ),
          const SizedBox(height: 16),

          _buildSkillCategory(
            "Databases",
            [
              _buildSkillChip("MySQL"),
              _buildSkillChip("PostgreSQL"),
              _buildSkillChip("MongoDB"),
            ],
          ),
          const SizedBox(height: 16),

          // Soft Skills
          _buildSkillCategory(
            "Soft Skills",
            [
              _buildSkillChip("Teamwork"),
              _buildSkillChip("Problem-solving"),
              _buildSkillChip("Communication"),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build a skill category
  Widget _buildSkillCategory(String category, List<Widget> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: AppFonts.nunito(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills,
        ),
      ],
    );
  }

  // Helper method to build skill chip
  Widget _buildSkillChip(String skill) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        skill,
        style: AppFonts.nunito(
          color: Colors.white,
        ),
      ),
    );
  }
}
