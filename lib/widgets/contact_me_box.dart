import 'package:flutter/material.dart';

class ContactMeBox extends StatelessWidget {
  const ContactMeBox({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    /// For accessing theme both light and dark mode
    ThemeData theme = Theme.of(context);
    return Card(
      child: Row(
        children: [
          ///Icon
          Icon(
            icon,
            size: 30,
            color: theme.canvasColor,
          ),

          ///Tile
          Text(
            title,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
