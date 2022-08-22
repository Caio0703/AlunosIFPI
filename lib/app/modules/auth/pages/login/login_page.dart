import 'package:alunos_ifpi/app/components/caixa_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    final Size size = MediaQuery.of(context).size;
    setState(() {
      isLoading = false;
    });
    return Scaffold(
      backgroundColor: Colors.green,
      body: isLoading
          ? Center(
              child: Container(
              color: Colors.green,
              height: size.height / 20,
              width: size.height / 20,
              child: CircularProgressIndicator(),
            ))
          : body(isLoading),
    );
  }

  Widget body(bool isLoading) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF0f0882), Color(0xFF00d4ff)],
            begin: Alignment.topCenter,
            end: AlignmentDirectional.bottomCenter),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: SizedBox(
              child: Container(
                decoration: BoxDecoration(color: Colors.grey),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView(children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 20.0,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Caixaform(HintText: 'Matrícula'),
                        SizedBox(
                          height: 15,
                        ),
                        Caixaform(HintText: 'Senha',)
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
