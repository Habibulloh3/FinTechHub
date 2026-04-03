import 'package:flutter/material.dart';
import 'package:flutter_application_3/appcolor.dart';

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
              ),const SizedBox(width: 5,),
                    InkWell(onTap: () {
                      
                    },child: const Text('Sign up',style:  TextStyle(color: Appcolor.buttonbackcolor,fontSize: 14,fontWeight: FontWeight.w600),))
            ],
          ),
        ],
      ),
      backgroundColor: Appcolor.textbackcolor,
    );
  }
}
