import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 DateTime? selectedDate; // Variable to store the selected date
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Profile Details',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
  radius: 80.0,
  backgroundColor: Colors.pink,
  foregroundColor: Colors.white,
  child: Padding(
    padding: EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 76.0,
      backgroundImage: AssetImage('assets/model (1).jpg'), // Replace with your profile image
      backgroundColor: Colors.white,
    ),
  ),
),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Perform action when the camera icon is pressed
                          print('Camera icon pressed');
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.pink,
                    ),
                    labelText: 'First Name',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.4)),
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
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.pink,
                    ),
                    labelText: 'Last Name',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.4)),
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
                SizedBox(height: 16.0),
                TextFormField(
  decoration: InputDecoration(
    prefixIcon: IconButton(
      icon: Icon(
        Icons.calendar_today,
        color: Colors.pink,
      ),
      onPressed: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );

        if (pickedDate != null) {
          setState(() {
            selectedDate = pickedDate;
          });
        }
      },
    ),
    labelText: 'Choose birthday date',
    
    labelStyle: TextStyle(color: Colors.pink),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.withOpacity(.4)),
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
  readOnly: true, // Make the field read-only
  onTap: () async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  },
  controller: TextEditingController(
    text: selectedDate != null
        ? DateFormat('yyyy-MM-dd').format(selectedDate!)
        : '', // Display the selected date in the text field
  ),
),
SizedBox(height: 20,),
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
          Positioned(
            top: 70,
            right: 18,
            child: Container(
                padding: EdgeInsets.only(bottom: 6, left: 6, right: 2),
                margin: EdgeInsets.all(16.0),
                child: Text(
                  'Skip',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.pink,
                      fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }
  
  DateFormat(String s) {}
}
