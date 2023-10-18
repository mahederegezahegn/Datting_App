import 'package:date/authonticaiton/forgetpassword.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class phoneSignup extends StatefulWidget {
  const phoneSignup({super.key});

  @override
  State<phoneSignup> createState() => _phoneSignupState();
}

class _phoneSignupState extends State<phoneSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 200),
        padding: const EdgeInsets.symmetric(horizontal:30),
        child:   Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              
              'My Mobile',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10,),
            Text('please enter your valid Phone number. we will send you a 6-digit code to verify your account',style: TextStyle(color: Colors.grey,
            fontSize: 17),),
SizedBox(height: 20,),
            TextFormField(
              
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.email,color: Colors.pink,),
    labelText: 'Phone',
    labelStyle: TextStyle(color: Colors.black),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink),
      borderRadius: BorderRadius.circular(10.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  // Add other properties and validators as needed
),
        SizedBox(height: 50,),
         InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OTPVerificationPage(phoneNumber: '',)),
            );
          },
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 20),)),
          ),
         )
          ],
        ),
      ),
    );
  }
}

class EmailSignup extends StatefulWidget {
  const EmailSignup({super.key});

  @override
  State<EmailSignup> createState() => _EmailSignupState();
}

class _EmailSignupState extends State<EmailSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 200),
        padding: const EdgeInsets.symmetric(horizontal:30),
        child:   Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              
              'My Email',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10,),
            Text('please enter your valid Email. we will send you a 6-digit code to verify your account',style: TextStyle(color: Colors.grey,
            fontSize: 17),),
SizedBox(height: 20,),
            TextFormField(
              
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.email,color: Colors.pink,),
    labelText: 'Email',
    labelStyle: TextStyle(color: Colors.black),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink),
      borderRadius: BorderRadius.circular(10.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  // Add other properties and validators as needed
),
        SizedBox(height: 50,),
         InkWell(
          onTap: (){},
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 20),)),
          ),
         ),
          ],
        ),
      ),
    );
  }
}





class OTPVerificationPage extends StatefulWidget {
  final String phoneNumber;

  OTPVerificationPage({required this.phoneNumber});

  @override
  _OTPVerificationPageState createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  List<FocusNode> _focusNodes = [];
  List<TextEditingController> _controllers = [];
  int _countdown = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 4; i++) {
      _focusNodes.add(FocusNode());
      _controllers.add(TextEditingController());
    }

    startTimer();
  }

  @override
  void dispose() {
    for (int i = 0; i < 4; i++) {
      _focusNodes[i].dispose();
      _controllers[i].dispose();
    }
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_countdown == 0) {
          timer.cancel();
          // Perform action when timer reaches 0
        } else {
          _countdown--;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 160),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                       Text(
                        '00: $_countdown',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 56.0),
                      ),
                      Text(
                        "Type the Verification code We've sent you",
                       textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          4,
                          (index) => SizedBox(
                            width: 60.0,
                            child: TextFormField(
                              controller: _controllers[index],
                              focusNode: _focusNodes[index],
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24.0),
                              decoration: InputDecoration(
  counterText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 8.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.pink), // Set the border color to pink
  ),
),
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  if (index < 3) {
                                    _focusNodes[index + 1].requestFocus();
                                  } else {
                                    _focusNodes[index].unfocus();
                                  }
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                     ElevatedButton(
  onPressed: () {
    String otp = _controllers.map((controller) => controller.text).join();
    if (otp == "123!") {
      // Redirect to profile page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
    } else {
      // Handle incorrect OTP logic here
      print('Incorrect OTP');
    }
  },
  child: Text('Verify'),
),
                      SizedBox(height: 16.0),
                     Text('Send agin',style: TextStyle(color: Colors.pink,fontSize: 15),textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(bottom:6,left: 6,right: 2),
    margin: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: Colors.pink),
    ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios,size: 40,color: Colors.pink,),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}