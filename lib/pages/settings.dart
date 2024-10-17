import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isSelected;
  final Color backgroundColor;
  final Color selectedBackgroundColor;
  final Color textColor;
  final Color selectedTextColor;
  final Color iconColor;
  final Color selectedIconColor;

  const SettingsPage({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.isSelected = false,
    this.backgroundColor = const Color(0xFF7A5C47),
    this.selectedBackgroundColor = const Color(0xFF5D4837),
    this.textColor = Colors.white,
    this.selectedTextColor = Colors.white,
    this.iconColor = Colors.white,
    this.selectedIconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor:
                isSelected ? selectedBackgroundColor : backgroundColor,
            foregroundColor: isSelected ? selectedTextColor : textColor,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: isSelected ? 4 : 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: isSelected ? selectedIconColor : iconColor,
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected ? selectedTextColor : textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
