import 'package:flutter/material.dart';

import '../../models/app_model.dart';
import '../../widgets/app_icon_widget.dart';
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

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

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
                        onTap: () {
                          if (myApps[index].packageName ==
                              "com.sabir.portfolio") {
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
