// import 'package:date/authonticaiton/forgetpassword.dart';
import 'package:date/authonticaiton/signup.dart';
// import 'package:date/landing/home.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 200,
                margin: EdgeInsets.only(top: 30),
                // padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Image.asset('assets/Logo.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign up to continue',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          // fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap:(){
Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmailSignup()),
            );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 80),
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            'Continue With email',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => phoneSignup()),
            );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 80),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ),
                          child: const Text(
                            'Use phone number',
                            style: TextStyle(
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "________________    ",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.5)),
                          ),
                          const Text(
                            "or sign up with",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "    ________________",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.5)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.pink.withOpacity(0.4),
                              ),
                            ),
                            child: const Icon(
                              Icons.facebook_rounded,
                              size: 52,
                              color: Colors.pink,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.pink.withOpacity(0.4),
                              ),
                            ),
                            child: const Icon(
                              Icons.g_mobiledata,
                              size: 52,
                              color: Colors.pink,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Term of use',
                            style: TextStyle(fontSize: 15, color: Colors.pink),
                          ),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(fontSize: 15, color: Colors.pink),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

