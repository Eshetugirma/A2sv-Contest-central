import 'package:flutter/material.dart';

class DashBoardCard extends StatelessWidget {
  final Icon icon;
  final String title;
  const DashBoardCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 165,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: icon, // Icons goes here
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Text(
              title, // title goes here
              style: const TextStyle(
                fontFamily: 'Poppins-Light',
                fontSize: 14,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 0),
            child: Text(
              '224',
              style: TextStyle(
                // fontFamily: 'Poppins-Medium',
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
