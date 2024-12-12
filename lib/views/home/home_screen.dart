

import 'package:flutter/material.dart';

import '../../models/app_model.dart';
import '../../styles/font_style.dart';
import 'portfolio_app.dart';

var myApps = [
  AppModel(
    appName: "Portfolio",
    assetImagePath: "assets/icons/portfolio-96.png",
    packageName: "com.sabir.portfolio",
  ),
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
  AppModel(
    appName: "WhatsApp",
    assetImagePath: "assets/icons/whatsapp.png",
  ),
  AppModel(
    appName: "Instagram",
    assetImagePath: "assets/icons/instagram.png",
  ),
  AppModel(
    appName: "Settings",
    assetImagePath: "assets/icons/setting.png",
  ),
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
                        appModel: myApps[index],
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
  final AppModel appModel;
  const AppIconWidget({
    super.key,
    required this.appModel,
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
                if (appModel.packageName == "com.sabir.portfolio") {
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
                } else {
                  //This is not your phone app. Please check my portfolio
                  //snackbar
                }
              },
              child: Column(
                children: [
                  if (appModel.assetImagePath != null)
                    Image.asset(
                      appModel.assetImagePath!,
                    )
                  // else if (appModel.assetImagePath != null)
                  //   Image.network(
                  //     appIconImageUrl!,
                  //   )
                  else if (appModel.appName != null &&
                      appModel.appName!.isNotEmpty)
                    Text(
                      appModel.appName![0],
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
          appModel.appName ?? "",
          style: AppFonts.nunito(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
