import 'package:flutter/material.dart';

class OEmptyStateWidget extends StatelessWidget {
  final String message;
  final String? imageAsset;

  const OEmptyStateWidget({super.key, required this.message, this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (imageAsset != null) ...[
              Image.asset(imageAsset!, height: 150),
              const SizedBox(height: 16),
            ],
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }
}
