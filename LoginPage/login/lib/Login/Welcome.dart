import 'package:flutter/material.dart';
import 'package:login/Login/Login.dart';

class Welcome extends StatefulWidget {
  final String title;
  final String pw;
  const Welcome({super.key, required this.title, required this.pw});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var title = widget.title;
    var pw = widget.pw;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
              );
            },
            icon: const Icon(Icons.chevron_left_rounded),
          ),
        ),
        body: Center(
          child: Text(
            pw,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}
