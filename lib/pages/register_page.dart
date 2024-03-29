import 'package:chat_app/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/my_button.dart';
import '../components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //sign up user
  void signUp() async {
    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Пароли не совпадают!"),
        ),
      );
      return;
    }
    //get auth service
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.signUpWithEmailandPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),

                //logo
                const Icon(
                  Icons.message,
                  size: 50,
                  color: Color(0xFF1FDB5F),
                ),
                const SizedBox(height: 20),

                //welcome back message
                const Text(
                  "Давайте создадим аккаунт для вас",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),

                //email textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Пароль',
                  obscureText: true,
                ),
                const SizedBox(height: 10),

                //confirm password
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Подтвердите пароль',
                  obscureText: true,
                ),
                const SizedBox(height: 20),

                //sign in button
                MyButton(onTap: signUp, text: "Зарегистрироваться"),
                const SizedBox(height: 20),

                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Уже зарегистрированы?'),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Войти',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
