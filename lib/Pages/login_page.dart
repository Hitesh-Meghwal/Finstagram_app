import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  double? _deviceWidth, _deviceHeight;

  //maintaining the state of form
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: _deviceWidth! * 0.05),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _titleWidget(),
                  _loginForm(),
                  _loginBtn()
                ],
              ),
            ),
          ),
    ));
  }

  Widget _titleWidget(){
    return Text(
      "Finstagram",
      style: TextStyle(
        color: Colors.black,
        fontSize: _deviceWidth! * 0.09
      ),
    );
  }

  Widget _loginForm(){
    return Container(
      height: _deviceHeight! * 0.2 ,
      child: Form(
        key: _loginFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _emailTextField()
          ],
        ),
      ),
    );
  }

  Widget _emailTextField(){
    return TextFormField(

    );
  }

  Widget _loginBtn(){
    return MaterialButton(
        minWidth: _deviceWidth! * 0.7,
        height: _deviceHeight! * 0.06,
        color: Colors.white24,
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white70,
            fontSize: _deviceWidth! * 0.06
          ),
        ),
        onPressed: (){

    });
  }

}
