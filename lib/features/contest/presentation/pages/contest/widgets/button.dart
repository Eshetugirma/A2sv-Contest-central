import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    this.name,
    this.icon,
    this.bg,
    this.borderColor,
    this.textColor,
    this.onPresse,
  });

  final VoidCallback? onPresse;
  final String? name;
  final IconData? icon;
  final Color? bg;
  final Color? borderColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          bg ?? Theme.of(context).colorScheme.primary,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(
              color: textColor ?? Theme.of(context).colorScheme.tertiary,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      onPressed: () {
        // Delete button pressed
        onPresse!();
        // if (onPressed != null) {
        // }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: textColor ?? Theme.of(context).colorScheme.onPrimary,
          ),
          SizedBox(width: 8.0),
          Text(
            '${name}',
            style: TextStyle(
              color: textColor ?? Theme.of(context).colorScheme.onPrimary,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
