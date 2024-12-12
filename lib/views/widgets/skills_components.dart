import 'package:flutter/material.dart';

import '../../models/resume_model.dart';
import '../../styles/font_style.dart';

class SkillsWidget extends StatelessWidget {
  final List<SkillCategory> skills;
  const SkillsWidget({super.key, required this.skills});

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
          // Iterate through the skill categories and build the UI
          for (var skillCategory in skills)
            _buildSkillCategory(
              skillCategory.category,
              skillCategory.skills
                  .map((skill) => _buildSkillChip(skill))
                  .toList(),
            ),
          const SizedBox(height: 16),
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
