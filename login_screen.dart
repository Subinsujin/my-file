import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          crossAxisAlignment:
          CrossAxisAlignment.stretch,
          children: [
            //Logo or Title
            const Center(
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            const SizedBox(height: 40),

            //Email TextField
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.email),
              ),
              keyboardType:
              TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),

            //Password TextField
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),

            //Login Button
            ElevatedButton(
              onPressed: () {
                //Handle login action here
              },
              style: ElevatedButton.styleFrom(
                padding: const
                EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(10)
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 10),

            //Forget Password
            TextButton(
              onPressed: () {
                //Handle forgot password action
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color:
                Colors.blueAccent),
              ),
            ),
            const SizedBox(height: 20),

            //Sign up text
            Row(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                TextButton(
                  onPressed: () {
                    //Handle sign-up action
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color:
                    Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

