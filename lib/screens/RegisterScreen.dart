import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerpageState();
}

class _registerpageState extends State<register> {
  bool _isvisible1 = false;
  bool _isvisible2 = false;
  bool _ispasswordEightcharacter = false;
  bool _haspasswordOnenumber = false;
  onPasswordChanged(String password) {
    setState(() {
      final numericRegx = RegExp(r'[0-9]');

      _ispasswordEightcharacter = false;
      if (password.length >= 8) {
        _ispasswordEightcharacter = true;

        _haspasswordOnenumber = false;
        if (numericRegx.hasMatch(password)) {
          _haspasswordOnenumber = true;
        }
      }
    });
  }

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
                "Register",
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0), topRight: Radius.circular(0)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 20),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                    child: TextFormField(
                      controller: TextEditingController(),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        prefixIcon: const Icon(
                          Icons.email,
                          size: 20,
                          color: Colors.amber,
                        ),
                        label: Text("email",
                            style: GoogleFonts.sacramento(
                              fontSize: 25,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                    child: TextFormField(
                      onChanged: (password) => onPasswordChanged(password),
                      obscureText: !_isvisible1,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isvisible1 = !_isvisible1;
                              });
                            },
                            icon: _isvisible1
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
                        label: Text("create password",
                            style: GoogleFonts.sacramento(
                              fontSize: 25,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: _ispasswordEightcharacter
                                  ? Colors.amber
                                  : Colors.transparent,
                              border: _ispasswordEightcharacter
                                  ? Border.all(color: Colors.amber)
                                  : Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Icon(
                            Icons.check,
                            size: 15,
                            color: Colors.grey[200],
                          )),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Contains at least 8 characters'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            
                              color: _haspasswordOnenumber
                                  ? Colors.amber
                                  : Colors.transparent,
                              border: _haspasswordOnenumber
                                  ? Border.all(color: Colors.amber)
                                  : Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Icon(
                            Icons.check,
                            size: 15,
                            color: Colors.grey[200],
                          )),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Contains at least 1 number'),
                    ],
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                      onPressed: () {},
                      child:
                          Text('create account', style: GoogleFonts.satisfy())),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
