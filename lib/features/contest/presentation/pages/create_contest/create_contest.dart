import 'package:contest_central/features/contest/presentation/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class FormBody extends StatefulWidget {
  const FormBody({super.key});

  @override
  State<FormBody> createState() => _FormBodyState();
}

List<String> answer = [];
Map<String, String> questions = {
  "Letter": "Accepted",
  "Trees": "Warning",
  "Deposit": "Warning",
  "Coins": "Accepted",
};

class _FormBodyState extends State<FormBody> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    // String? selectedValue;
    List<String> country = ['Ethiopia', 'Ghana'];
    List<String> school = ['AASTU', 'AIT', 'ASTU'];

    return Scaffold(
      // drawer: ,
      appBar: CustomAppBar(title: "Add Constest"),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 15, 22),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Contestansts  and  Contest URL",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  CustomDashBoard(title: 'Country', choice: country),
                  CustomDashBoard(title: 'University', choice: school),
                  const SizedBox(
                    height: 22,
                  ),
                  const CustomTextField(title: 'Contest Name'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(title: 'Contest URL'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Problems",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(title: 'Problem Name'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(title: 'Problem Url:'),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF264ECA),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    child: const Text("Add Problem"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 43),
                          child: Text(
                            "PROBLEMS",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: questions.length,
                          itemBuilder: (context, index) {
                            String key = questions.keys.elementAt(index);
                            String? value = questions[key];
                            key = key.toUpperCase();

                            return Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(43, 0, 10, 0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '${String.fromCharCode('A'.codeUnitAt(0) + index)}. $key',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        value!,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: value == "Accepted"
                                              ? const Color(0xFF68CF73)
                                              : const Color(0xFFF27777),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                            Icons.delete_outline_rounded),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                ),
                                if (index < questions.length - 1)
                                  Divider(), // Add a Divider if not the last item
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF264ECA),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    child: const Text("Finish"),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

class CustomDashBoard extends StatefulWidget {
  final String title;
  final List<String> choice;
  const CustomDashBoard({required this.choice, required this.title, super.key});

  @override
  State<CustomDashBoard> createState() => _CustomDashBoardState();
}

class _CustomDashBoardState extends State<CustomDashBoard> {
  String? selectedValue;
  List<String> answer = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            // color: Color(0xFF6B7280),
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            filled: true,
            // color
            fillColor: Theme.of(context).colorScheme.primary,
// Set the background color to white
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: const BorderSide(color: Color(0XFFD9DADB))),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.grey, // Set the border color to grey
              ),
            ),
          ),
          value: selectedValue,
          hint: const Padding(
            padding: EdgeInsets.fromLTRB(10, 3, 5, 3),
            child: Text(
              'Select',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF939699),
              ),
            ),
          ),
          items: widget.choice
              .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ),
              )
              .toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
              answer.add(selectedValue!);
            });
          },
        ),
        const SizedBox(
          height: 10,
        ),
        // Conditionally display the ListView.builder or an empty container
        answer.isNotEmpty
            ? SizedBox(
                height: 50, // Set the height according to your design
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: answer.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        padding: const EdgeInsets.fromLTRB(20, 5, 5, 7),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(answer[index]),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      answer.remove(answer[index]);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    color: Color(0XFFFA4A49),
                                    size: 15,
                                  ))
                            ]),
                      ),
                    );
                  },
                ),
              )
            : Container(),
      ],
    );
  }
}

class CustomTextField extends StatefulWidget {
  final String title;
  const CustomTextField({required this.title, super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            // color
            fillColor: Theme.of(context).colorScheme.primary,
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: const BorderSide(color: Color(0XFFD9DADB))),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.grey, // Set the border color to grey
              ),
            ),
          ),
        ),
      ],
    );
  }
}
