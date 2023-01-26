import 'package:flutter/material.dart';
import 'package:login/Login/ErrorPage.dart';
import 'package:login/Login/Welcome.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController uname = TextEditingController();
  TextEditingController pwd = TextEditingController();

  // ignore: prefer_final_fields
  // String _msg = '';
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Form"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Welcome(
                    title: "Welcome $uname",
                    pw: "Logged in Successfully \n Password is $pwd"),
              ),
            );
          },
          icon: const Icon(Icons.chevron_left_rounded),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              //User Name
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 10),
                child: TextFormField(
                    controller: uname,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Some Text';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      // labelText: 'Email Id',
                      labelText: 'Enter Username',
                      hintText: 'Enter Email Id',
                      icon: Icon(Icons.person_outline),
                    )),
              ),

              //Password
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
                child: TextFormField(
                    controller: pwd,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Some Text';
                      }
                      return null;
                    },
                    //to hide password
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      icon: Icon(Icons.lock),
                    )),
              ),

              //Login Button
              Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        var unm = uname.text;
                        var p = pwd.text;

                        setState(() {
                          // ignore: unrelated_type_equality_checks
                          if (_formkey.currentState!.validate()) {
                            if (unm == 'Akash' && p == 'Akash') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Welcome(
                                      title: "Welcome $unm",
                                      pw: "Logged in Successfully \n Password is $p"),
                                ),
                              );
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ErrorPage()));
                            }
                          }
                        });
                      },
                      child: const Text("Login"),
                    ),
                  )),
            ]),
      ),
    );
  }
}
