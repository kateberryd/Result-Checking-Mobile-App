
import 'package:flutter/material.dart';

import 'package:resultchecker/screens/resultScreen.dart';
import 'package:resultchecker/widgets/custom_dropdown.dart';





class DasboardScreen extends StatefulWidget {
  const DasboardScreen({Key? key}) : super(key: key);

  @override
  _DasboardScreenState createState() => _DasboardScreenState();
}

class _DasboardScreenState extends State<DasboardScreen> {
  
  List<String> academicSession = [
    "1992-1993",
    "1993-1994",
    "1994-1995",
    "1995-1996",
    "2019-2020",
    "2020-2021"
  ];

  final studentLevels = [
    "ND I",
    "ND II",
    "ND III",
    "HND I",
    "HND II",
    "HND III",
    "HND III",
    "HND III",
    "HND III",
  
    "Catherine",  

  ];
  

  String selectedSession = 'Select Academic Session';
  
  String selectedLevel = 'Select Level of Result';

  
  handleselectedSession (value){
    setState(() {
      selectedSession = value;
    });
  }
  
  handleSelectedLevel (value){
    setState(() {
      selectedLevel = value;
    });
  }


   
   int _radioValue = 0;

  _handleRadioValueChange( value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
          
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    
  final _formKey = GlobalKey<FormState>();

  //  double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: screenHeight,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/bg2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromRGBO(22, 58, 172, 1),
                                    letterSpacing: 0.5),
                              ),
                              
                              
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                            
                              'NCS-19-003',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Poppins",
                                    color: Color.fromRGBO(22, 58, 172, 1),
                                    letterSpacing: 5),
                              ),
                            ],
                          ),
                        ),
                                              Container(
                        margin: EdgeInsets.only(top: 30),
                        child:   Hero(
                          tag: 'logo',
                          child: Image.asset(
                            "assets/logo.png",
                            height: 70.0,
                            width: 70.0,
                          ),
                        ),
                      ),
                     
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Form(
                    key: _formKey,
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: Column(
                        children: <Widget>[
                          Center(
                              child: Text(
                            "RESULT CHECKER",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(22, 58, 172, 1),
                                fontSize: 20.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Raleway",
                                letterSpacing: 0.5),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color.fromRGBO(107, 119, 160, 1),
                    ),
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
                      labelText: 'NCS-19-003',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(107, 119, 160, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Raleway",
                      ),
                      hintText: 'Input your Matric Number',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(107, 119, 160, 1),
                      ),
                    ),
                  
                    validator: (value) {
                      print('congratulations');
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return "shshshgshgs";
                    },

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomDropdown(text: selectedSession, data: academicSession ),
                  SizedBox(
                    height: 20.0,
                  ),
                  
                   CustomDropdown(text: selectedLevel, data: studentLevels ),
                   
                   
                       SizedBox(
                    height: 20.0,
                  ),

                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                                        margin: EdgeInsets.only(bottom: 10),

                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4.8,
                          blurRadius: 40,
                          offset: Offset(-10, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: [
                            new Radio(
                          value: 0,
                          groupValue: _radioValue,
                          onChanged: _handleRadioValueChange,
                        ),
                        new Text(
                          '1st Semester',
                          style: new TextStyle(color: Color.fromRGBO(107, 119, 160, 1), fontSize: 14.0, fontFamily: "Raleway", fontWeight: FontWeight.w600),
                        ),
                            ]
                          )
                        ),
                        Container(
                          child: Row(
                            children: [
                               new Radio(
                          value: 1,
                          groupValue: _radioValue,
                          onChanged: _handleRadioValueChange,
                        ),
                        new Text(
                          '2nd Semester',
                          style: new TextStyle(color: Color.fromRGBO(107, 119, 160, 1), fontSize: 14.0, fontFamily: "Raleway", fontWeight: FontWeight.w600),

                        ),
                            ]
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 54.0,
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Hero(
                      tag: 'check result',
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        color: Color.fromRGBO(22, 58, 172, 1),
                        onPressed: () {
                           if(_formKey.currentState!.validate()){
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(),
                            ),
                          );
                           }
                        
                        },
                        child: Text(
                          'CHECK RESULT',
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
                  Container(
                    padding: EdgeInsets.all(10.0),
                    height: 40.0,
                    width: 161.0,
                    decoration: BoxDecoration(
                       border: Border.all(
                                    color: Color.fromRGBO(22, 58, 172, 0.05),
                                  ),
                       borderRadius: BorderRadius.circular(33.0),
                      color: Color.fromRGBO(253, 125, 125, 0.05),
                    ),
                    child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.logout,
                          color: Color.fromRGBO(253, 125, 125, 1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                        
                        ),
                        Text(
                          'LOGOUT',
                          style: TextStyle(
                              fontFamily: 'FiraSans',
                              color: Color.fromRGBO(253, 125, 125, 1),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3),
                        ),
                      ],
                    ),
                    onTap: () {},
                  )),
                  SizedBox(
                    height: 60,
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
