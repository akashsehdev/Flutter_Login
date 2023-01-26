import 'package:flutter/material.dart';
import 'package:login/Login/Login.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});
  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Oops \n',
              style: TextStyle(
                  // foreground: Paint()
                  //   ..shader = const LinearGradient(colors: <Color>[
                  //     Colors.blue,
                  //     Colors.redAccent,
                  //   ]).createShader(const Rect.fromLTWH(0, 0, 200, 100)
                  // ),
                  color: Color.fromARGB(255, 179, 72, 72),
                  fontSize: 100,
                  fontWeight: FontWeight.w500),
              children: <TextSpan>[
                TextSpan(
                    text: "Something's Wrong!!!!!\n",
                    style: TextStyle(
                      fontSize: 20,
                      // foreground: Paint()
                      //   ..shader = const LinearGradient(colors: <Color>[
                      //     Colors.pinkAccent,
                      //     Colors.deepOrange,
                      //   ]).createShader(const Rect.fromLTWH(0, 0, 200, 100)),
                    )),
                TextSpan(
                    text: "Wrong Id & Password",
                    style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: const Text('Back')),
        )
      ],
    ));
  }
}
