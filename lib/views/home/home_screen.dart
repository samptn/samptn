import 'package:flutter/material.dart';

import '../../styles/font_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Colors.deepPurple,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ExperienceWidget(),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  'Button',
                  style: AppFonts.nunito(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
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
            style: AppFonts.nunito(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
