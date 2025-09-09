import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    FlutterLogo(size: 76),
                    SizedBox(height: 26),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(hintText: 'E-mail'),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      controller: _senhaController,
                      decoration: InputDecoration(hintText: 'Senha'),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(onPressed: () {}, child: Text('Entrar')),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Entrar com google'),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.g_mobiledata_rounded, color: Colors.red),
                      ],
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () {},
                      child: Text('Ainda não tem uma conta? Crie uma conta!'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
