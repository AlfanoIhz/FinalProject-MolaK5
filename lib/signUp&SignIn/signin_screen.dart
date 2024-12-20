import 'package:flutter/material.dart';
import 'package:myapp/navigation_menu.dart';
import 'package:myapp/signUp&SignIn/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 15, 24, 43),
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Container for the logo image
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/Logo.png',
                    height: 80,
                  ),
                ),
                const SizedBox(height: 20),
                // Column for input fields
                const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 25, 
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5, top: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xFF18202E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: 
                            const TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                        ),
                      ],
                    ),
                    //Phone Number
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Phone Number",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5, top: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xFF18202E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: 
                            const TextField(
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'Phone Number',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50,),
                //Other Method
                Column(
                  children: [
                    const Text(
                      "Sign in With", 
                      style: TextStyle(color: Colors.white, fontSize: 14)
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const NavigationMenu()),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 211, 211, 211),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/images/google.png',
                              height: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const NavigationMenu()),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 211, 211, 211),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        //Apple
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const NavigationMenu()),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 211, 211, 211),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.apple,
                              size: 40,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              alignment: AlignmentDirectional.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 130, vertical: 15),
                  backgroundColor: const Color(0xFF18202E),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationMenu()));
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins-Regular",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or Create an account?",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}