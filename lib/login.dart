import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future _login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: new Container(
                padding: EdgeInsets.all(30),
                child: Column(children: [
                  Center(
                      child: Column(children: [
                    Image(image: AssetImage('assets/images/logo.png')),
                    Padding(
                        padding: EdgeInsets.all(12),
                        child: AutoSizeText(
                          'Welcome back !',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.all(12),
                        child: SizedBox(
                            width: 230,
                            child: AutoSizeText(
                              'Stay signed in with your account to make searching easier',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                  ])),
                  Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child:
                                  Text('Email', style: TextStyle(fontSize: 15)),
                            ),
                          ),
                          TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(),
                              labelText: 'Enter your email',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, top: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Password',
                                  style: TextStyle(fontSize: 15)),
                            ),
                          ),
                          TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(),
                              labelText: 'Enter your password',
                            ),
                          )
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: 1,
                                    groupValue: 1,
                                    onChanged: (value) {}),
                                Text('Keep me signed in',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12))
                              ],
                            ),
                            Text('Forgot password ?',
                                style: TextStyle(color: Colors.red))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: SizedBox(
                          width: 325,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () async {
                                await _login();
                              },
                              child: Text('Login',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))))),
                  Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Or continue with',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                        ],
                      )),
                ]))));
  }
}
