import 'package:flutter/material.dart';

class WhatsappIcon extends StatelessWidget {
  const WhatsappIcon({
    required this.icon,
    required this.color,
    required this.onTap,
    this.right,
    super.key,
  });

  final double? right;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: right ?? 0.0),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon),
        color: color,
      ),
    );
  }
}
