import 'package:flutter/material.dart';

import '../models/resume_model.dart';
import '../styles/font_style.dart';

class ExperienceWidget extends StatelessWidget {
  final List<Experience> experiences;
  const ExperienceWidget({
    super.key,
    required this.experiences,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: AppFonts.nunito(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                  experiences.length,
                  (index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          experiences[index].title,
                          style: AppFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          experiences[index].company,
                          style: AppFonts.nunito(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          experiences[index].duration,
                          style: AppFonts.nunito(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          experiences[index].description,
                          style: AppFonts.nunito(
                            fontSize: 14,
                            color: Colors.grey[800],
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
