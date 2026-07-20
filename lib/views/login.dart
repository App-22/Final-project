import 'package:flutter/material.dart';
import '../widgets/headerwidget.dart';
import '../widgets/logincard.dart';
import '../widgets/CustomTextField.dart';
import '../widgets/loginbutton.dart';
import '../widgets/divider.dart';
import '../widgets/Socialbutton.dart';
import '../widgets/signup.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSection(),
              LoginCard(),
              CustomTextField(
                hint: "Email",
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 20),
              CustomTextField(
                hint: "Password",
                icon: Icons.lock_outline,
                obscure: true,
              ),
              SizedBox(height: 20),
              LoginButton(),
              SizedBox(height: 20),
              DividerWidget(),
              SizedBox(height: 20),
              SocialButton(
                icon: Icons.facebook,
                text: "Continue with Facebook",
                color: Colors.blue,
                
              ),
              SizedBox(height: 20),
              SocialButton(
                icon: Icons.g_mobiledata,
                text: "Continue with Google",
                color: Colors.red,
                
              ),
              SizedBox(height: 20),
              SignupText(),

            ],
          ),
        ),
      ),
    );
  }
}