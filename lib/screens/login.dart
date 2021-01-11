import 'package:flutter/material.dart';
import 'package:gametv/core/constants.dart';
import 'package:gametv/screens/bezier.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  String userName = '';
  String password = '';
  bool isUserNameError = false;
  bool isPassError = false;
  bool wrongCredentials = false;

  @override
  void initState() {
    super.initState();
  }

  validateUserName(text) {
    setState(() {
      wrongCredentials = false;
      userName = text;
      isUserNameError = text.length < 3 || text.length > 10 ? true : false;
    });
  }

  validatePassword(text) {
    setState(() {
      wrongCredentials = false;
      password = text;
      isPassError = text.length < 3 || text.length > 10 ? true : false;
    });
  }

  isValid() {
    bool validName =
        (userName.length < 3 || userName.length > 10) ? false : true;
    bool validPass =
        (password.length < 3 || password.length > 10) ? false : true;
    return validName && validPass;
  }

  checkLogin() async {
    var index =
        userDetails.indexWhere((element) => element['userName'] == userName);
    if (index == -1) {
      setState(() {
        wrongCredentials = true;
      });
    } else {
      setState(() {
        wrongCredentials =
            userDetails[index]['password'] == password ? false : true;
      });
    }
    if (!wrongCredentials) {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool("isLoggedIn", true);
      Navigator.pushReplacementNamed(context, "home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Image.asset(
                    'assets/images/app-icon.png',
                    width: 150.0,
                    height: 150.0,
                    // fit: BoxFit.cover,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Container(
                      child: Text(
                        'Username',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange.shade600),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      cursorColor: Colors.blue,
                      controller: controller1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '',
                      ),
                      onChanged: (text) {
                        validateUserName(text);
                      },
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  isUserNameError
                      ? Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text(
                            "Username should be between 3 to 10 characters.",
                            style: TextStyle(color: Colors.red.shade700),
                          ),
                        )
                      : Container(),
                  Container(
                    child: Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade600),
                    ),
                    margin: EdgeInsets.only(top: 15),
                  ),
                  Container(
                    width: 150,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      cursorColor: Colors.blue,
                      controller: controller2,
                      decoration: InputDecoration(
                        hintText: '',
                      ),
                      onChanged: (text) {
                        validatePassword(text);
                      },
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  isPassError
                      ? Container(
                          margin: EdgeInsets.only(top: 8, bottom: 30),
                          child: Text(
                            "Password should be between 3 to 10 characters.",
                            style: TextStyle(color: Colors.red.shade700),
                          ),
                        )
                      : Container(
                          margin: EdgeInsets.only(bottom: 30),
                        ),
                  RaisedButton(
                    disabledColor: Colors.grey,
                    color: isValid() ? Colors.blue : Colors.grey.shade400,
                    textColor: isValid() ? Colors.white : Colors.black45,
                    onPressed: () {
                      checkLogin();
                    },
                    shape: StadiumBorder(),
                    child: Container(
                        width: 150, child: Center(child: Text('Submit'))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      wrongCredentials
                          ? "Please try with valid credentials"
                          : "",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer()),
        ],
      ),
    );
  }
}
