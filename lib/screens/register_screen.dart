import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmarSenhaController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16),
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
                child: Column(children: [
                  FlutterLogo(size: 76,),
                  SizedBox(height: 16,),
                  TextField(
                    controller: _nomeController,
                    decoration: InputDecoration(hintText: 'Nome'),
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  TextField(
                    obscureText: true,
                    controller: _senhaController,
                    decoration: InputDecoration(hintText: 'Senha'),
                  ),
                  TextField(
                    obscureText: true,
                    controller: _confirmarSenhaController,
                    decoration: InputDecoration(hintText: 'Confirmar Senha'),
                  ),
                  SizedBox(height: 16,),
                  ElevatedButton(onPressed: () {
                    if (_senhaController.text == _confirmarSenhaController.text) {

                    }
                  }, child: Text('Cadastrar')),
                  SizedBox(height: 16,)
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}