import 'package:dsw60290/utils/app_colors.dart';
import 'package:dsw60290/utils/app_images.dart';
import 'package:dsw60290/utils/app_texts.dart';
import 'package:dsw60290/views/widgets/basic_text_form_field.dart';
import 'package:flutter/material.dart';

import '../register/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 62),
                  Image.asset(AppImages.logo),
                  SizedBox(height: 21),
                  _signINn,
                  SizedBox(height: 21),
                  BasicTextFormField(),
                  SizedBox(height: 40),
                  BasicTextFormField(),
                  ElevatedButton(
                    child: const Text('Open route'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const RegisterView(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                      onTap: () => print('xxx'),
                      child: Text(AppTexts.signUp, style: TextStyle(fontSize: 30),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget get _signINn{
  return Align(
    alignment: .topLeft,
    child: Text(
      AppTexts.signIn,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: AppColors.purpleColor,
      ),
    ),
  );
}