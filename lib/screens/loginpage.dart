import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:first_project/screens/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool _isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "Login",
                style: GoogleFonts.satisfy(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height - 230.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(250.0),
                    topRight: Radius.circular(250.0)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 150),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Hey there,',
                        textStyle: GoogleFonts.satisfy(
                          fontSize: 15,
                        ),
                        speed: const Duration(milliseconds: 50),
                      ),
                      TypewriterAnimatedText(
                        'Welcome back!',
                        textStyle: GoogleFonts.satisfy(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 50),
                      ),
                    ],
                    totalRepeatCount: 10,
                    pause: const Duration(milliseconds: 500),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 20),
                    child: SingleChildScrollView(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          prefixIcon: const Icon(
                            Icons.person,
                            size: 20,
                            color: Colors.amber,
                          ),
                          label: Text("username",
                              style: GoogleFonts.sacramento(
                                fontSize: 25,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                    child: TextFormField(
                      obscureText: !_isvisible,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isvisible = !_isvisible;
                              });
                            },
                            icon: _isvisible
                                ? const Icon(
                                    Icons.visibility,
                                    size: 20,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    size: 20,
                                    color: Colors.black,
                                  )),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        prefixIcon: const Icon(
                          Icons.password,
                          size: 20,
                          color: Colors.amber,
                        ),
                        label: Text("password",
                            style: GoogleFonts.sacramento(
                              fontSize: 25,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('Login', style: GoogleFonts.satisfy())),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account? '),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => register()));
                        },
                        child: Text(
                          'Register',
                          style: GoogleFonts.ubuntuMono(
                            color: Colors.amber,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
