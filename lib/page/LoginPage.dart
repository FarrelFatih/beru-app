import 'package:app_movie/widgets/LoginInterface.dart';
import 'package:app_movie/widgets/LoginSevices.dart';
import 'package:app_movie/widgets/UserModel.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ILogin _loginServices = LoginServices();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF292B37),
          ),
          width: 300,
          height: 362,
          child: Column(
            children: [
              ClipRRect(
                child: Image.asset(
                  "images/logo.png",
                  height: 50,
                  width: 60,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.contacts_rounded,
                    color: Color(0xFFE3CCAE),
                    size: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white30,
                    ),
                    height: 40,
                    width: 200,
                    margin: EdgeInsets.only(left: 3),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: TextFormField(
                        onEditingComplete: () async {
                          UserModel response = await _loginServices.login(
                              _emailController.text, _passController.text);
                        },
                        textInputAction: TextInputAction.next,
                        controller: _emailController,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your UserID/Email",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.key_rounded,
                    color: Color(0xFFE3CCAE),
                    size: 42,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white30,
                    ),
                    height: 40,
                    width: 200,
                    margin: EdgeInsets.only(left: 3),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: TextFormField(
                        onEditingComplete: () async {
                          UserModel response = await _loginServices.login(
                              _emailController.text, _passController.text);
                        },
                        textInputAction: TextInputAction.done,
                        controller: _passController,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your Password",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "homePage");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFB8621B),
                  ),
                  width: 75,
                  height: 38,
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.white),
              Container(
                child: Text(
                  "or use another way",
                  style: TextStyle(
                    color: Colors.white38,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "images/google.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  ClipRRect(
                    child: Image.asset(
                      "images/facebook.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  ClipRRect(
                    child: Image.asset(
                      "images/instagram.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
