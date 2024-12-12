import 'package:flutter/material.dart';
import '/models/resume_model.dart';

import '../styles/font_style.dart';

class ResumeHeaderWidget extends StatelessWidget {
  final BasicInfo basicInfo;
  const ResumeHeaderWidget({
    super.key,
    required this.basicInfo,
  });

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
                basicInfo.name,
                style: AppFonts.nunito(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "| ${basicInfo.designation}",
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
            basicInfo.address,
            style: AppFonts.nunito(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Email: ${basicInfo.email}",
            style: AppFonts.nunito(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Phone: ${basicInfo.phone}",
            style: AppFonts.nunito(
              color: Colors.grey[600],
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),

          // Social Media Links
          Row(
            children: [
              ...basicInfo.socialLinks.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: _buildSocialIcon(
                    e.platform,
                    e.url,
                  ),
                ),
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
        "assets/icons/$assetPath.png".toLowerCase(),
        width: 24,
        height: 24,
      ),
    );
  }
}
