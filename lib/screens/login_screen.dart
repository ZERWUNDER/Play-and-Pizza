import 'package:playandpizza/widgets/auth_textfield.dart';
import 'package:flutter/material.dart';
import 'package:playandpizza/widgets/appbar_widget.dart';

class LoginScreen extends StatelessWidget {
  //text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  final TextEditingController konfirmasiPwController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const AuthAppBar(),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              //TITLE
              const Center(
                child: Text(
                  "Masuk",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              //USERNAME
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Username',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ),
              AuthTextfield(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 10),

              //PASSWORD
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ),
              AuthTextfield(
                controller: pwController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),

              //Forgot pass link
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Lupa kata sandi? '),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/reset');
                    },
                    child: Text(
                      'Klik disini',
                      style: TextStyle(color: Colors.red[700]),
                    ),
                  )
                ],
              ),

              const Flexible(
                  child: SizedBox(
                height: 1000,
              )),

              //Button
              Center(
                child: Column(
                  children: [
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor:
                            const Color(0xFFBD0000), // Hex color code
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Adjust this value to change the roundedness
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 105),
                      ),
                      onPressed: () {
                        debugPrint("Masuk");
                      },
                      child: Row(
                        children: [
                          const Text('Masuk ke Beranda'),
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/Right Arrow.png',
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Belum punya akun? '),
                        TextButton(
                          onPressed: () {
                            // Log In
                            Navigator.pushNamed(context, '/signup');
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                          ),
                          child: const Text(
                            'Buat disini',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFBD0000),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
