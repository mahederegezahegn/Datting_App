import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int index =1;

  final List<Widget> _screens = [
    HomeScreen(),
    MatchesScreen(),
    ChatScreen(),
    
    ProfileScreen(),
  ];

    final items=const[
      Icon(Icons.home,size:30,color: Colors.pink,),
      Icon(Icons.message,size:30,color: Colors.pink,),
      Icon(Icons.person,size:30,color: Colors.pink,),
      // Icon(Icons.home,size:30,color: Colors.pink,),

    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.green,
        backgroundColor: Colors.green,
        body: _screens[index],
        bottomNavigationBar: CurvedNavigationBar(items: items,
        index: index,
        onTap: (SelectedIndex){
          setState(() {
            index=SelectedIndex;
          });
        },
        height: 60, backgroundColor:Colors.green,
        animationDuration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
    
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}

class MatchesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Matches'),
      ),
      body: Center(
        child: Text('Matches Screen'),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(
        child: Text('Chat Screen'),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}