import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 79,
                  height: 20,
                  margin: const EdgeInsets.only(top: 246),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3F4347),
                  ),
                  child: const Text(
                    'Username',
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 604),
                  height: 57,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(left: 171),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email or username',
                      hintStyle: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF3F4347),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 20,
                  margin: const EdgeInsets.only(left: 171),
                  color: const Color(0xFF000000),
                  child: const Text(
                    'Password:',
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 604),
                  height: 57,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 10, left: 171),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF3F4347),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Checkbox(
                      value: true, // Checked for "Keep me logged in"
                      onChanged: (value) {
                        // Handle checkbox state
                      },
                    ),
                    const Text('Keep me logged in'),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        // Handle forgot password action
                      },
                      child: Container(
                        color: const Color(0xFFA1519A),
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  width: 604,
                  height: 51,
                  padding: const EdgeInsets.fromLTRB(15, 15, 274, 15),
                  margin: const EdgeInsets.only(top: 712, left: 171),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4A2760),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle login action
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(
                          0xFF4A2760), // the background color of the button
                      fixedSize:
                          const Size(604, 51), // the fixed size of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            90), // the rounded corners of the button
                      ),
                    ),
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white, // Set background color to white
      ),
    );
  }
}
