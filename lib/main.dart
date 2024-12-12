import 'package:flutter/material.dart';
import '/models/app_model.dart';
import '/styles/font_style.dart';
import '/views/home/home_screen.dart';

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

var myApps = [
  AppModel(
    appName: "Portfolio",
    assetImagePath: "assets/icons/portfolio-96.png",
  ),
  //Github,
  AppModel(
    appName: "Github",
    assetImagePath: "assets/icons/github.png",
  ),
  AppModel(
    appName: "Twitter",
    assetImagePath: "assets/icons/twitter.png",
  ),
  AppModel(
    appName: "LinkedIN",
    assetImagePath: "assets/icons/linkedin.png",
  ),
  // AppModel(
  //   appName: "Create Your's",
  //   assetImagePath: "assets/icons/add.gif",
  // ),
];

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
        padding: const EdgeInsets.all(16),
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
              alignment: Alignment.center,
              child: SafeArea(
                child: Wrap(
                  runSpacing: 16,
                  spacing: 16,
                  children: [
                    ...List.generate(
                      myApps.length,
                      (index) => AppIconWidget(
                        appAssetPath: myApps[index].assetImagePath,
                        appName: myApps[index].appName,
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
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: const PortfolioApp(),
                    );
                  },
                );
              },
              child: Column(
                children: [
                  if (appAssetPath != null)
                    Image.asset(
                      appAssetPath!,
                    )
                  else if (appIconImageUrl != null)
                    Image.network(
                      appIconImageUrl!,
                    )
                  else if (appName != null && appName!.isNotEmpty)
                    Text(
                      appName![0],
                      style: AppFonts.nunito(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
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
