import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TopConteststants extends StatelessWidget {
  const TopConteststants({
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
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
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
                radius: 20,
                backgroundColor: Theme.of(context).colorScheme.background,
                child: Icon(
                  Ionicons.people,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Top Contestants',
                style: TextStyle(
                  fontFamily: 'Poppins-Light',
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.84,
            height: MediaQuery.of(context).size.height * 0.34,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFFB6C6FE),
                        ),
                        child: Center(
                          child: Text(
                            '${index + 1}.',
                            style: const TextStyle(
                              fontSize: 18,
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
                            color: const Color(0xFFB6C6FE),
                          ),
                        ),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Ionicons.trophy_outline),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Eshetu Girma',
                                style: TextStyle(
                                  fontFamily: 'Poppins-Regular',
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFFB6C6FE),
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
