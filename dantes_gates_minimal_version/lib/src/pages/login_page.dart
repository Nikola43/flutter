import 'package:dantes_gates_minimal_version/src/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'forgot_password_page.dart';
import 'search_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    FocusNode nodeOne = FocusNode();

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('assets/images/quantika.png')),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: TextField(
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail), labelText: 'Email')),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: TextField(
                  obscureText: true,
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Contraseña',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 5.0, top: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchPage()));
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(105, 95, 145, 1),
                                borderRadius: BorderRadius.circular(9.0)),
                            child: Text("Entrar",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 20.0, top: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPasswordPage()));
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            child: Text("¿Olvidó su contraseña?",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromRGBO(105, 95, 145, 1)))),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: Text("¿No tienes cuenta? Regístrate",
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Color.fromRGBO(105, 95, 145, 1),
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
