import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider/screens/fogot_password/forgot_password.dart';
import 'package:rider/screens/home/home.dart';
import 'package:rider/screens/login/sign_up.dart';
import 'package:rider/utils/color.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void handleLogin() {
    // Authentication logic here
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // Check if email and password are not empty
    if (email.isNotEmpty && password.isNotEmpty) {
      // If authentication is successful, navigate to HomeScreen
      if (authenticateUser(email, password)) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        // If authentication fails, show snackbar with message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Authentication failed. Please try again.'),
            duration: Duration(seconds: 3),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {
                // Some task to be executed when 'OK' is pressed
              },
            ),
          ),
        );
      }
    } else {
      // If email or password is empty, show snackbar with message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter email and password.'),
          duration: Duration(seconds: 3),
          action: SnackBarAction(
            label: 'OK',
            onPressed: () {
              // Some task to be executed when 'OK' is pressed
            },
          ),
        ),
      );
    }
  }

  // Mock authentication function
  bool authenticateUser(String email, String password) {
    // Replace this with your actual authentication logic
    return email == 'your@email.com' && password == 'yourpassword';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RColor.primaryBackground,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/shap.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 240),
                Text(
                  'Login Now',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'and lets get those order moving!',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Colors.grey.withOpacity(0.5),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: passwordController,
                    style: TextStyle(color: Colors.white),
                    obscureText: !isPasswordVisible, // Toggle password visibility
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.grey.withOpacity(0.5),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      // Add suffix icon for password visibility toggle
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons
                                  .visibility_off, // Change icon based on visibility
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Toggle password visibility
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotScreen()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 183),
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: handleLogin, // Call handleLogin function on button press
                  child: Container(
                    width: 300,
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: GoogleFonts.montserrat(
                          color: RColor.accent,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: RColor.pink,
                    minimumSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen()),
                        );
                      },
                      child: Text(
                        'Create Account',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
