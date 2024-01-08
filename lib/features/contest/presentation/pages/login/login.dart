import 'package:contest_central/features/contest/presentation/pages/contest/contest.dart';
import 'package:contest_central/features/contest/presentation/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  bool isDarkMode(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: isDarkMode(context) ? Color(0xFF454264) : Colors.white,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      isDarkMode(context)
                          ? "assets/images/logoblack.svg"
                          : "assets/images/logo 1.svg",
                      width: double.infinity,
                      height: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode(context) ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 16,
                    color: isDarkMode(context) ? Colors.white : Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'email',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isDarkMode(context) ? Colors.white : Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFCBD5E0), width: 0.0),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  filled: true,
                  fillColor: isDarkMode(context)
                      ? Color(0xFF282540)
                      : Color(0xFFF7FAFC),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    color: isDarkMode(context) ? Colors.white : Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'password',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isDarkMode(context) ? Colors.white : Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFCBD5E0), width: 0.0),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  filled: true,
                  fillColor: isDarkMode(context)
                      ? Color(0xFF282540)
                      : Color(0xFFF7FAFC),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Remember me",
                          style: TextStyle(
                            fontSize: 15,
                            color: isDarkMode(context)
                                ? Colors.white
                                : Colors.grey,
                          )),
                      Checkbox(
                        value: false,
                        onChanged: (_) {},
                      ),
                    ],
                  ),
                  const Text(
                    "forget password ?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF264ECA),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xFFCBD5E0),
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        color: isDarkMode(context) ? Colors.white : Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xFFCBD5E0),
                      height: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      isDarkMode(context) ? Color(0xff282540) : Colors.white),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Color(0xFFCBD5E0)),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontSize: 16,
                            color: isDarkMode(context)
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
