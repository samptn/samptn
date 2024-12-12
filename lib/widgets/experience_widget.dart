import 'package:flutter/material.dart';

import '../styles/font_style.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

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
            ),
          ),
        ],
      ),
    );
  }
}
