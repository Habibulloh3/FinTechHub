import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/appcolor.dart';
import 'package:flutter_application_3/fillprofile.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            child: Text(''),
          ),
          const SizedBox(
            height: 250,
          ),
          const Center(
            child: Text(
              'Lets sign in',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Appcolor.blackcolor),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                const SizedBox(
                  width: 120,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/images/btnSigninwithGoogle.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Continue with google',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Appcolor.greycolor),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                const SizedBox(
                  width: 120,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/images/Vector.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Continue with facebook',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Appcolor.greycolor),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            '(Or)',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: Appcolor.greycolor),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 60),
                  maximumSize: const Size(350, 60),
                  backgroundColor: Appcolor.buttonbackcolor),
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    'Sign In with Your Account',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF)),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Appcolor.buttonbackcolor,
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const SizedBox(
                width: 150,
              ),
              const Text(
                'Don’t have an Account?',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.greycolor),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Registernow()));
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Appcolor.buttonbackcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ],
      ),
      backgroundColor: Appcolor.textbackcolor,
    );
  }
}

class Registernow extends StatefulWidget {
  const Registernow({super.key});

  @override
  State<Registernow> createState() => _RegisternowState();
}

class _RegisternowState extends State<Registernow> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(child: Image.asset("assets/images/LOGO (1).png")),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Getting Started.!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Appcolor.blackcolor),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Create an Account to Continue your allCourses',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Appcolor.greycolor),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 60),
                  maximumSize: const Size(350, 60),
                  backgroundColor: Appcolor.buttonbackcolor),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '              Sign In',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Appcolor.buttonbackcolor,
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Or Continue With',
            style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 14,
                color: Appcolor.greycolor),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/btnSigninwithGoogle.png'),
              ),
              const SizedBox(
                width: 50,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/Vector.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 150,
              ),
              const Text(
                'Already have an Account?',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.greycolor),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Loginpages()));
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        color: Appcolor.buttonbackcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ],
      ),
      backgroundColor: Appcolor.textbackcolor,
    );
  }
}

class Loginpages extends StatefulWidget {
  const Loginpages({super.key});

  @override
  State<Loginpages> createState() => _LoginpagesState();
}

class _LoginpagesState extends State<Loginpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(child: Image.asset("assets/images/LOGO (1).png")),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Let’s Sign In.!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Appcolor.blackcolor),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Login to Your Account to Continue your Courses',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Appcolor.greycolor),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Text(
                '     Remember me',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Appcolor.greycolor),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const Forgotpassword()));
                },
                child: const Text('Forgot password',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Appcolor.greycolor)),
              )
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(350, 60),
                  maximumSize: const Size(350, 60),
                  backgroundColor: Appcolor.buttonbackcolor),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FillProfile()));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '              Sign In',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Appcolor.buttonbackcolor,
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Or Continue With',
            style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 14,
                color: Appcolor.greycolor),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/btnSigninwithGoogle.png'),
              ),
              const SizedBox(
                width: 50,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/Vector.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 150,
              ),
              const Text(
                "Don't have an Account?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.greycolor),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Registernow()));
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Appcolor.buttonbackcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )),
              const Text('')
            ],
          ),
        ],
      ),
      backgroundColor: Appcolor.textbackcolor,
    );
  }
}



class Forgotpassword extends StatelessWidget {
  const Forgotpassword ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Forgot Password", style: TextStyle(color: Colors.black)),
        backgroundColor: Appcolor.textbackcolor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 300),
            const Text(
              "Select which contact details should we use to reset your password",
              style: const TextStyle(fontSize: 16, color: Appcolor.greycolor),
            ),
            const SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: const Icon(Icons.email, color: Appcolor.buttonbackcolor),
                title: const Text("Via Email"),
                subtitle: const Text("priscilla.frank23@gmail.com"),
                onTap: () {
             
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.sms, color: Colors.blue),
                title: const Text("Via SMS"),
                subtitle: const Text("+91 958-894-5529"),
                onTap: () {
          
                },
              ),
            ),
        const SizedBox(height: 40,),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(380, 60),
                  maximumSize: const Size(380, 60),
                  backgroundColor: Appcolor.buttonbackcolor),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Newpassword()));
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '                   Continue',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Appcolor.buttonbackcolor,
                    ),
                  )
                ],
              )),
          ],
        ),
      ),backgroundColor:  Appcolor.textbackcolor
    );
  }
}
class Newpassword extends StatefulWidget {
  const Newpassword({super.key});

  @override
  State<Newpassword> createState() => _NewpasswordState();
  
}

class _NewpasswordState extends State<Newpassword> {
   void showAlertAndRedirected() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             Image.asset('assets/images/Group 10 (2).png'),
              const SizedBox(height: 20),
              const Text(
                "Congratulations",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              const Text(
                "Your account is ready to use. You will be redirected to the Home Page in a few seconds.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
     const CircularProgressIndicator.adaptive()
            ],
          ),
        );
      },
    );

  
    Timer(const Duration(seconds: 5), () {
      Navigator.pop(context); 
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Create new Password", style: TextStyle(color: Colors.black)),
        backgroundColor: Appcolor.textbackcolor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 300),
            const Text(
              "Create your new password",
              style: TextStyle(fontSize: 16, color: Appcolor.greycolor),
            ),
            const SizedBox(height: 20),
              Padding(  padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),const SizedBox(height: 10,),
          Padding(  padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),     
            
        const SizedBox(height: 40,),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(380, 60),
                  maximumSize: const Size(380, 60),
                  backgroundColor: Appcolor.buttonbackcolor),
              onPressed:showAlertAndRedirected,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '                   Continue',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Appcolor.buttonbackcolor,
                    ),
                  )
                ],
              )),
          ],
        ),
      ),backgroundColor:  Appcolor.textbackcolor
    );
  }
}



  