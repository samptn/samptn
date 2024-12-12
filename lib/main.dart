import 'package:flutter/material.dart';
import 'package:flutter_application_2/styles/font_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI components',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 234, 85, 135),
              Color.fromARGB(255, 248, 0, 83),
            ],
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      3,
                      (index) => const AppIconWidget(
                        appAssetPath: "assets/icons/portfolio-96.png",
                        appName: "Portfolio",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppIconWidget extends StatelessWidget {
  final String? appName;
  final String? appIconImageUrl;
  final String? appAssetPath;
  const AppIconWidget({
    super.key,
    this.appName,
    this.appIconImageUrl,
    this.appAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(0.4),
          ),
          child: SizedBox(
            width: 32,
            height: 32,
            child: Column(
              children: [
                if (appAssetPath != null)
                  Image.asset(
                    appAssetPath!,
                  )
                else if (appName != null)
                  Text(
                    appName!,
                    style: AppFonts.nunito(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  )
                else if (appIconImageUrl != null)
                  Image.network(
                    appIconImageUrl!,
                  ),
              ],
            ),
          ),
        ),
        Text(
          appName ?? "",
          style: AppFonts.nunito(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
