import 'dart:async';
import 'package:date/Home.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Colors.pink,
        
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    startProgress();
  }

  void startProgress() {
    Timer.periodic(const Duration(milliseconds: 200), (timer) {
      setState(() {
        _progressValue += 0.1;
        if (_progressValue >= 1.0) {
          timer.cancel();
          // Redirect to the next screen or perform any desired action
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => Onboardingpage()));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF01605a),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Meet Your Perfect Match',
              style: TextStyle(
                color: Color(0xFFFFD0A8),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 20,
              decoration: BoxDecoration(
                color: const Color(0xFFFFD0A8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: MediaQuery.of(context).size.width * _progressValue,
                    height: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF862D),
                      borderRadius: BorderRadius.circular(10),
                    ),
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

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  PageController _controller = PageController();
int _currentPageIndex = 0;
int _totalPages = 3; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
           onPageChanged: (int pageIndex) {
    setState(() {
      _currentPageIndex = pageIndex;
    });
  },
          children: [
            Column(
              children: [
                Container(
                  height: 500,
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 70,
                          height: 250,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/model (2).jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                      Container(
                          width: 220,
                          height: 350,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage('assets/model (1).jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                      Container(
                          width: 70,
                          height: 250,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage('assets/model (3).jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                    ],
                  ),
                ),
                const Text(
                  "Algorithm",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 280,
                  child: const Text(
                    "Users going througn a vetting process to ensure you never match with bots.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 101, 89, 89),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 500,
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 70,
                          height: 250,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage('assets/model (1).jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                      Container(
                          width: 220,
                          height: 350,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage('assets/model (3).jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                      Container(
                          width: 70,
                          height: 250,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage('assets/model (2).jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                    ],
                  ),
                ),
                const Text(
                  "Matches",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 280,
                  child: const Text(
                    "We match you with people that have a large array of similar interest.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 101, 89, 89),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 500,
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 70,
                          height: 250,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage('assets/model (3).jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                      Container(
                          width: 220,
                          height: 350,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage('assets/model (2).jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                      Container(
                          width: 70,
                          height: 250,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                            ),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage('assets/model (1).jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                    ],
                  ),
                ),
                const Text(
                  "Premium",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 280,
                  child: const Text(
                    "Sign up today and enjoy the first month of premium benefits on us.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 101, 89, 89),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.69),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
            ),),
      Container(
  alignment: Alignment(0, 0.85),
  child: ElevatedButton(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
    ),
    onPressed: _currentPageIndex == _totalPages - 1
        ? () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelcomePage()),
            );
          }
        : null, // Disable the button if it's not the last page
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Text('Create an account',style:TextStyle(color:Colors.white,fontSize: 17)),
    ),
  ),
),
        Container(
            alignment: Alignment(0, 0.95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: cr,
              children: [
                Text('Already have an account?'),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.pinkAccent),
                    ))
              ],
            ))
      ],
    ));
  }
}
