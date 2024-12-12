
import 'package:flutter/material.dart';

import '../models/app_model.dart';
import '../styles/font_style.dart';

class AppIconWidget extends StatelessWidget {
  final AppModel appModel;
  final void Function()? onTap;
  const AppIconWidget({
    super.key,
    required this.appModel,
    this.onTap,
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
              onTap:onTap ,
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
