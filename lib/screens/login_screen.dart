import 'package:flutter/material.dart';
import 'package:parcakes/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _controllerUsername = TextEditingController();
  final _controllerPassword = TextEditingController();

  bool _validateUsername = false;
  bool _validatePassword = false;

  @override
  void dispose() {
    _controllerUsername.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/bg-mobile.jpg"),
            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "parcakes!",
              style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.orange,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: TextField(
                    controller: _controllerUsername,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.white),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.orange),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.white),
                      ),
                      hintText: 'Write your username...',
                      hintStyle: const TextStyle(color: Colors.white),
                      labelText: 'Username',
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      errorText: _validateUsername
                          ? 'Username can\'t be empty!'
                          : null,
                      errorStyle: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: TextField(
                    controller: _controllerPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.white),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.orange),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.white),
                      ),
                      hintText: 'Write your password...',
                      hintStyle: const TextStyle(color: Colors.white),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      errorText: _validatePassword
                          ? 'Password can\'t be empty!'
                          : null,
                      errorStyle: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controllerUsername.text.isEmpty
                          ? _validateUsername = true
                          : _validateUsername = false;

                      _controllerPassword.text.isEmpty
                          ? _validatePassword = true
                          : _validatePassword = false;

                      !_validateUsername && !_validatePassword
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                    username: _controllerUsername.text),
                              ),
                            )
                          : null;
                    });
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 35,
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
