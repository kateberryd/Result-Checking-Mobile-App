import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage("assets/bg2.png"),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
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
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(22, 58, 172, 1),
                                    letterSpacing: 0.5),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'NCS-19-003',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromRGBO(22, 58, 172, 1),
                                    letterSpacing: 6),
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
                            height: 80.0,
                            width: 80.0,
                          ),
                        ),
                      ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height:35,
                          width: 35,
                          decoration: BoxDecoration(
                             border: Border.all(
                              color: Color.fromRGBO(22, 58, 172, 1),
                            ),
                             borderRadius: BorderRadius.circular(50.0),

                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: Color.fromRGBO(22, 58, 172, 1),
                            iconSize: 18.0,
                              onPressed: (){
                                  Navigator.pop(context);
                                },

                          ),
                        ),
                        Padding(
                           padding: EdgeInsets.symmetric(horizontal: 45),

                        ),
                        Center(
                            child: Text(
                          "RESULT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(22, 58, 172, 1),
                              fontSize: 20.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Raleway",
                              letterSpacing: 3),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(22, 58, 172, 1),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Matric Number : ',
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 119, 154, 1),
                                  fontSize: 15,
                                  letterSpacing: 0.23,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Nunito Sans"),
                            ),
                            Text('  NCS-19-003',
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 119, 154, 1),
                                    fontSize: 15,
                                    letterSpacing: 0.23,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Nunito Sans")),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Name : ',
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 119, 154, 1),
                                  fontSize: 14.0,
                                  letterSpacing: 0.23,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Nunito Sans"),
                            ),
                            Text('EVWIDONOR ALLEN',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 119, 154, 1),
                                    fontSize: 15,
                                    letterSpacing: 0.23,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Nunito Sans")),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Session : ',
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 119, 154, 1),
                                  fontSize: 15,
                                  letterSpacing: 0.23,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Nunito Sans"),
                            ),
                            Text('2019/2020',
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 119, 154, 1),
                                    fontSize: 15,
                                    letterSpacing: 0.23,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Nunito Sans")),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Level : ',
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 119, 154, 1),
                                  fontSize: 15,
                                  letterSpacing: 0.23,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Nunito Sans"),
                            ),
                            Text(' ND I',
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 119, 154, 1),
                                    fontSize: 18.0,
                                    letterSpacing: 0.23,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Nunito Sans")),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Semester : ',
                              style: TextStyle(
                                  color: Color.fromRGBO(107, 119, 154, 1),
                                  fontSize: 15,
                                  letterSpacing: 0.23,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Nunito Sans"),
                            ),
                            Text('FIRST',
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 119, 154, 1),
                                    fontSize: 15,
                                    letterSpacing: 0.23,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Nunito Sans")),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(22, 58, 172, 1),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Table(
                        border: TableBorder(
                            horizontalInside: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(22, 58, 172, 1),
                                style: BorderStyle.solid
                                
                                
                                ),
                            

                            
                            bottom: BorderSide(color: Color.fromRGBO(22, 58, 172, 1), width: 1),

                            
                            
                            
                             ),
                        
                        children: [
                          TableRow(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(22, 58, 172, 1),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              children: [
                                
                                _buildTableHeader('CCODE'),
                                
                                 _buildTableHeader('Uints'),
                                 
                                 _buildTableHeader('Score'),
                                                                
                                _buildTableHeader('Grade'),
                                
                                
                               _buildTableHeader('Points'),




                                
                               
                               
                                
                              ]),
                          TableRow(children: [
                            _buildTableCell("Bio 111"),
                            _buildTableCell("2.0"),
                            _buildTableCell("70.1"),
                            _buildTableCell("A"),
                            _buildTableCell("7.0")
                          ]),
                          
                          TableRow(children: [
                            _buildTableCell("Bio 111"),
                            _buildTableCell("2.0"),
                            _buildTableCell("70.1"),
                            _buildTableCell("A"),
                            _buildTableCell("7.0")
                          ]),
                          
                          TableRow(children: [
                            _buildTableCell("Bio 111"),
                            _buildTableCell("2.0"),
                            _buildTableCell("70.1"),
                            _buildTableCell("A"),
                            _buildTableCell("7.0")
                          ]),
                          
                          TableRow(children: [
                            _buildTableCell("Bio 111"),
                            _buildTableCell("2.0"),
                            _buildTableCell("70.1"),
                            _buildTableCell("A"),
                            _buildTableCell("7.0")
                          ]),
                          
                         
                        ],
                        
                        
                        
                      ),
                                 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              _buildTableCell("TCU: 20.0"),
                              _buildTableCell("TCP: 51.0"),
                              _buildTableCell("GPA: 3.55")
                            ],
                          ),
                          
                          SizedBox(
                            height: 20.0,
                          ),
                          
                          Container(
                            padding: EdgeInsets.all(10.0),
                            height: 40.0,
                            width: 161.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                    color: Color.fromRGBO(22, 58, 172, 0.05),
                                  ),
                              color: Color.fromRGBO(22, 58, 172, 0.05),
                             borderRadius: BorderRadius.circular(33.0),
                            ),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                
                                text: "CGPA:",
                              
                                style: TextStyle(
                                  
                                  letterSpacing: 1.0,
                                  
                                  
                                  
                                  
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(107, 119, 154, 1),
                                  ),
                                children: <TextSpan>[
                                
                                 TextSpan(
                                      text: ' 3.88',
                                      style: TextStyle(
                                        letterSpacing: 0.23,
                                        fontSize: 15.0
                                      
                                      )
                                    ),
                                ]
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          )
                      ]
                    ),
                  ),
                  
                  SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


Widget _buildTableHeader(data) {
  return Container(
    padding: EdgeInsets.only(bottom: 11.0),
    child: Text(
      data,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 14.0,
          fontFamily: "Nunito Sans",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.23,
          height: 3.5,
          color: Color.fromRGBO(255, 255, 255, 1),
),
    )
  
  );
}

Widget _buildTableCell(data) {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: Text(
      data, 
      style: TextStyle(
          color: Color.fromRGBO(107, 119, 154, 1),
          fontSize: 12.0,
          fontWeight: FontWeight.w800,
          fontFamily: "Nunito Sans",
          height: 3.1,
          letterSpacing: 0.23,
          
          ),
    ),
  );
}


