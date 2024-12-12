import 'package:flutter/material.dart';

import '../../styles/font_style.dart';

class QualificationWidget extends StatelessWidget {
  const QualificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            "Qualifications",
            style: AppFonts.nunito(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          
          // Timeline
          Column(
            children: [
              _buildTimelineItem(
                "Bachelor's in Computer Science",
                "XYZ University, 2016 - 2020",
                "Graduated with Honors. Specialized in software development and data structures.",
              ),
              _buildTimelineItem(
                "Master's in Software Engineering",
                "ABC University, 2020 - 2022",
                "Focused on advanced algorithms, machine learning, and cloud computing.",
              ),
              _buildTimelineItem(
                "Flutter Developer Certification",
                "Online Course, 2022",
                "Completed a professional Flutter certification program, building real-world applications.",
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to create a timeline item
  Widget _buildTimelineItem(String title, String subtitle, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Timeline indicator
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 4),
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 2,
              height: 60,
              color: Colors.blue[200],
            ),
          ],
        ),
        const SizedBox(width: 16),
        
        // Qualification details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: AppFonts.nunito(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: AppFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
