import 'package:flutter/material.dart';
import 'package:foodday/components/buttons.dart';
import 'package:foodday/components/input.dart';
import 'package:foodday/components/termsAndConditions.dart';
import 'package:foodday/components/text_style.dart';
import 'package:foodday/screen/authScreen/accountType.dart';
import 'package:foodday/screen/authScreen/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final phoneController = TextEditingController();
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AccountType()),
            );
          },
        ),
        title: const Image(
          image: AssetImage('assets/images/logo.png'),
          width: 180,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            RichText(
              text: const TextSpan(
                text: "Sign In ",
                style: TextStyle(
                  fontSize: 32,
                  height: 1.2,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF333333),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Food', style: TextStyle(color: Color(0xFF4DB24D))),
                  TextSpan(
                      text: 'Day', style: TextStyle(color: Color(0xFFFFA500))),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Body(text: "Sign in with mobile number"),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  height: 42,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 27,
                          child: Image(
                            image: AssetImage(
                              "assets/icons/flag.png",
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "+880",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Input(
                    controller: phoneController,
                    text: "Phone number",
                    inputType: TextInputType.phone,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Button(
              callBack: () {
                setState(() {
                  phoneNumber = phoneController.text;
                });
              },
              text: "Continue",
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff888888),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xFFcccccc),
                    height: 1,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Text(
                    "or",
                    style: TextStyle(
                      color: Color(0xFF888888),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFcccccc),
                    height: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            if (phoneNumber != null)
              Text(
                "Phone Number: $phoneNumber",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF333333),
                ),
              ),
            const SizedBox(height: 16),
            Container(
              height: 42,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                      child: Image(
                        image: AssetImage(
                          "assets/icons/google.png",
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Google",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 42,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 18,
                      child: Image(
                        image: AssetImage(
                          "assets/icons/apple.png",
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Apple",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Small(text: "By tapping Continue, you agree to the "),
                SizedBox(width: 2),
                TermsAndConditions(),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
