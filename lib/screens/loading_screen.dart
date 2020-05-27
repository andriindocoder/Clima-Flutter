import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }

  void something(int n) {
    if (n>10){
      throw 'N is greater than ten.';
    }
  }

  @override
  Widget build(BuildContext context) {
    String myMargin = 'abc';
    double myMarginAsADouble;

    try{
      myMarginAsADouble = double.parse(myMargin);
    }catch(e){
      print(e);
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(myMarginAsADouble ?? 30.0), //Null aware operator
        color: Colors.red,
      ),
    );

  }
}
