import 'package:flutter/material.dart ';
import 'package:ionicons/ionicons.dart';

class TopGroups extends StatelessWidget {
  const TopGroups({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.44,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: Theme.of(context).colorScheme.background,
                child: Icon(
                  Ionicons.people,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Top Groups',
                style: TextStyle(
                  fontFamily: AutofillHints.jobTitle,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.84,
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 31,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFDE9B),
                        ),
                        child: Center(
                          child: Text(
                            '${index + 1}.',
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 220,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFFFDE9B),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Group 45',
                            style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFDE9B),
                        ),
                        child: const Center(
                          child: Text(
                            '80%',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
