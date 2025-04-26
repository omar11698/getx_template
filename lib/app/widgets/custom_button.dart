import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isDisabled;
  final double? width;
  final double? height;
  final Color? color;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isDisabled = false,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isDisabled ? Colors.grey : (color ?? Colors.blue),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
