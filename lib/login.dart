import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
                       padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance_outlined, size: 100, color: Colors.deepPurple,),
            SizedBox(height: 30,),

            Text("Hello Again!",
            style: GoogleFonts.bebasNeue(fontSize: 52,),
           ),
           Text("Welcome back, you've been missed", textAlign: TextAlign.center,
           style: TextStyle(fontSize: 24, color: Colors.black.withAlpha(100)),),
           SizedBox(height: 30,),

           //Email Field
           Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white)
             ),
             child: Padding(
               padding: const EdgeInsets.only(left: 25),
               child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email"
                ),
               ),
             ),
           ),
            SizedBox(height: 10,),
           //Password field
           Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  
                ),
              ),
            ),
           ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(16),
                 child: Text("Sign In", textAlign: TextAlign.center,
                 style: TextStyle(color: Colors.white, fontSize: 20),),
               ),
            ),
             SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                Text("Register", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple, fontSize: 14),),
              ],
            )
          ],
        ),
      ),
    );
  }
}