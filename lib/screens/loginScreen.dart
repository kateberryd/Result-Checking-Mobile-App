import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:resultchecker/screens/dashboardScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  bool isPasswordVisible = true;

  final _formKey = GlobalKey<FormState>();

  togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
    
  }
  
  
  toggleIsCheckedBox(value) {
    setState(() {
      isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'logo',
                          child: Image.asset(
                            "assets/logo.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Center(
                            child: Text(
                          "D.S Adegbenro ICT Polytechnic P.M.B 5028, IfoItori, Ewekoro Ogun State",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(107, 119, 160, 1),
                              fontSize: 16.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Nunito Sans",
                              letterSpacing: 0.99),
                        )),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                        ),
                        Center(
                            child: Text(
                          "Login Account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(22, 58, 172, 1),
                              fontSize: 18.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Raleway",
                              letterSpacing: 1.1),
                        )),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                        ),
                        Center(
                            child: Text(
                          "This app will be used for the purpose of checking only your result",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(107, 119, 160, 1),
                              fontSize: 16.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Nunito Sans",
                              letterSpacing: 0.99),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Form(
                        key: _formKey,
                        child: _buildForm(
                            isPasswordVisible, togglePasswordVisibility)),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Color.fromRGBO(22, 58, 172, 1),
                              value: isChecked,
                              onChanged: (value) => {
                                toggleIsCheckedBox(value)
                              } ,
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(107, 119, 160, 1),
                                  fontSize: 13.0,
                                  fontStyle: FontStyle.italic,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                        // InkWell(
                        //   child: Text(
                        //     'Forgot Password',
                        //     style: TextStyle(
                        //         fontFamily: 'FiraSans',
                        //         color: Color.fromRGBO(22, 58, 172, 1),
                        //         fontWeight: FontWeight.w500,
                        //         letterSpacing: 0.3),
                        //   ),
                        //   onTap: () {},
                        // )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 54.0,
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Hero(
                      tag: 'login_button',
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        color: Color.fromRGBO(22, 58, 172, 1),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DasboardScreen(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          'LOGIN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: 0.3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  // Container(
                  //   child: RichText(
                  //     textAlign: TextAlign.center,
                  //     text: TextSpan(
                  //         text: 'School Portal ? ',
                  //         style: TextStyle(
                  //           fontFamily: 'Raleway',
                  //           fontSize: 17,
                  //           color: Color.fromRGBO(107, 119, 160, 1),
                  //           fontWeight: FontWeight.w400,
                  //         ),
                  //         children: <TextSpan>[
                  //           TextSpan(
                  //               text: 'Click Here',
                  //               style: TextStyle(
                  //                 fontFamily: 'Raleway',
                  //                 fontSize: 17,
                  //                 color: Color.fromRGBO(22, 58, 172, 1),
                  //                 fontWeight: FontWeight.w400,
                  //                 letterSpacing: 0.3
                  //               ))
                  //         ]),
                  //   ),
                  // ),

                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildForm(bool isPasswordVisible, togglePasswordVisibility) {
  return Column(children: <Widget>[
    TextFormField(
      style: TextStyle(
        color: Color.fromRGBO(107, 119, 160, 1),
      ),
      autofocus: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(242, 242, 242, 1),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(107, 119, 160, 1),
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(242, 242, 242, 1),
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(242, 242, 242, 1),
            width: 2.0,
          ),
        ),
        labelText: 'Matric Number',
        labelStyle: TextStyle(
            color: Color.fromRGBO(107, 119, 160, 1),
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            fontFamily: "Raleway",
            letterSpacing: 1.5),
        hintText: 'Input your Matric Number',
        hintStyle: TextStyle(
          color: Color.fromRGBO(107, 119, 160, 1),
        ),
        prefixIcon: Icon(
          Icons.school_rounded,
          color: Color.fromRGBO(107, 119, 160, 1),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field cannot be empty';
        }
        return null;
      },
    ),
    SizedBox(
      height: 20,
    ),
    TextFormField(
      style: TextStyle(
        color: Color.fromRGBO(107, 119, 160, 1),
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: isPasswordVisible,
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(242, 242, 242, 1),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(107, 119, 160, 1),
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(242, 242, 242, 1),
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Color.fromRGBO(242, 242, 242, 1),
            width: 2.0,
          ),
        ),
        labelText: 'Password',
        labelStyle: TextStyle(
            color: Color.fromRGBO(107, 119, 160, 1),
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            fontFamily: "Raleway",
            letterSpacing: 1.5),
        hintText: 'Input your Password',
        hintStyle: TextStyle(
          color: Color.fromRGBO(107, 119, 160, 1),
        ),
        prefixIcon: Icon(
          Icons.lock,
          color: Color.fromRGBO(107, 119, 160, 1),
        ),
        suffix: InkWell(
          onTap: togglePasswordVisibility,
          child: Icon(
            isPasswordVisible ? Icons.visibility_off : Icons.visibility,
            color: Color.fromRGBO(107, 119, 160, 1),
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field cannot be empty';
        }
        return null;
      },
    )
  ]);
}
