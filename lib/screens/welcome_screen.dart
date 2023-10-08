import 'package:flutter/material.dart';
import 'package:parcakes/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("images/bg-mobile.jpg"),
                fit: BoxFit.cover,
                opacity: 0.6,
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: Column(
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Enjoy Your Days with Cakes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Material(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 35,
                              ),
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
