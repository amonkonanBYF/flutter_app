import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/FormCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: Image.asset("assets/logo.png")
              )
            ],
          ),
          SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 150.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: ScreenUtil.getInstance().setHeight(200),),
                    FormCard(),
                    SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                    InkWell(
                      child: Container(
                        width: ScreenUtil.getInstance().setWidth(330),
                        height: ScreenUtil.getInstance().setHeight(100),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xFF17ead9),
                            Color(0xFF6078ea),
                          ]),
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff6078ea).withOpacity(.3),
                              offset: Offset(0.0, 8.0),
                              blurRadius: 8.0
                            )]
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Center(
                              child: Text("SINGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  letterSpacing: 1.0
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            ),
          )
        ],

      ),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

