import 'package:flutter/material.dart';
import 'package:foodday/components/text_style.dart';
import 'package:foodday/screen/authScreen/signin.dart';

class AccountType extends StatelessWidget {
  const AccountType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Image(
          image: AssetImage('assets/images/logo.png'),
          width: 220,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const HeadingH1(
                text: "What kind of account would you like to open today?"),
            const SizedBox(height: 16),
            const Body(
              text: "You can add another account later on too.",
            ),
            const SizedBox(height: 32),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
              contentPadding: EdgeInsets.zero,
              leading: const Image(
                image: AssetImage('assets/icons/restaurantIcon.png'),
                width: 50,
              ),
              title: const Text(
                'Restaurant Account',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF333333),
                ),
              ),
              subtitle: const Text(
                'Start sharing surplus food and making a positive impact.',
                style: TextStyle(
                  fontSize: 13,
                  letterSpacing: 0.0,
                  color: Color(0xFF888888),
                ),
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(right: 0.0),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: Color(0xFF888888),
                ),
              ),
            ),
            const SizedBox(height: 6),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
              contentPadding: EdgeInsets.zero,
              leading: const Image(
                image: AssetImage('assets/icons/userIcon.png'),
                width: 50,
              ),
              title: const Text(
                'Personal Account',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF333333),
                ),
              ),
              subtitle: const Text(
                'Enjoy helping starving people around you and spread smile.',
                style: TextStyle(
                  fontSize: 13,
                  letterSpacing: 0.0,
                  color: Color(0xFF888888),
                ),
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(right: 0.0),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: Color(0xFF888888),
                ),
              ),
            ),
            const SizedBox(height: 6),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
              contentPadding: EdgeInsets.zero,
              leading: const Image(
                image: AssetImage('assets/icons/ngoIcon.png'),
                width: 50,
              ),
              title: const Text(
                'NGO Account',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF333333),
                ),
              ),
              subtitle: const Text(
                'Access surplus meals and help share them to those in need.',
                style: TextStyle(
                  fontSize: 13,
                  letterSpacing: 0.0,
                  color: Color(0xFF888888),
                ),
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(right: 0.0),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                  color: Color(0xFF888888),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
