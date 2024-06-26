import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ses1406/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var existingUserId = 'vig31';
  var password = 'MyPassword123*';
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  var hidandshow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff83B4FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Color(0xff070A0F)),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                        TextFormField(
                          controller: userIdController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Color(0xffBDBDBD)),
                            hintText: "Email",
                            fillColor: Color(0xffF3F5F7),
                          ),
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: hidandshow,
                          keyboardType: TextInputType.number,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Color(0xffBDBDBD)),
                            hintText: "Password",
                            fillColor: Color(0xffF3F5F7),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hidandshow = !hidandshow;
                                });
                              },
                              icon: hidandshow
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: Color(0xff242424),
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: Color(0xff242424),
                                    ),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {}, child: Text("Forgot Password")),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (userIdController.text == existingUserId &&
                                  passwordController.text == password) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => HomeScreen()));
                              } else {
                                print(false);
                              }
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xff5151C6),
                              ),
                            ),
                          ),
                        ),
                        Text("Or login by"),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bike_scooter),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.snowboarding),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("Don't you have an account?")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
