import 'package:flutter/material.dart';
import 'package:payment_app/HomePage.dart';
import 'package:payment_app/widget/AppBar.dart';
import 'package:payment_app/widget/TextInput.dart';
import 'package:payment_app/widget/ButtonShap.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: newMethod(context, title: 'Back'),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ButtonShap(
                onPressed: () {},
                backgroundColor: Colors.white,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Image.asset(
                        'assets/facebook.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    const Text(
                      'Login with Facebook',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ButtonShap(
                onPressed: () {},
                backgroundColor: Colors.white,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Image.asset(
                        'assets/google.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    const Text(
                      'Login with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 40,
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Email',
                style: TextStyle(fontSize: 12.0),
              ),
              const SizedBox(height: 13.0),
              TextInput(),
              const SizedBox(height: 16.0),
              const Text(
                'Password',
                style: TextStyle(fontSize: 13.0),
              ),
              const SizedBox(height: 10.0),
              TextInput(),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  const Checkbox(value: false, onChanged: null),
                  const Text(
                    'Remember Me',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              ButtonShap(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                backgroundColor: Colors.deepPurple,
                child: const Text(
                  'Log In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              ButtonShap(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.apple,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'Sign in with Apple',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
