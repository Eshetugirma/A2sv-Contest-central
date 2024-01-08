import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text(
        title!,
        style: TextStyle(
          fontFamily: 'Poppins-Light',
          fontSize: 16,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: CircleAvatar(
            radius: 18,
            // backgroundColor: Colors.red,
            // backgroundColor: Colors.red,
            backgroundColor: Theme.of(context).colorScheme.background,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
