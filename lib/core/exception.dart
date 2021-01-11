import 'package:flutter/material.dart';

class ExceptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).orientation == Orientation.landscape
          ? MediaQuery.of(context).size.height * 1.2
          : MediaQuery.of(context).size.height * .8,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/whoops.png',
                height: MediaQuery.of(context).size.height * 0.30,
              ),
            ),
            SizedBox(
              height:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 15
                      : 50,
            ),
            Text(
              'Whoops!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'SF_UI',
              ),
            ),
            SizedBox(
              height:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 15
                      : 30,
            ),
            Text(
              "Something went wrong.. Please try again!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'SF_UI',
              ),
            ),
            SizedBox(
              height:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? 14
                      : 30,
            ),
            Container(
              width: 240,
              child: RaisedButton(
                child: Text(
                  'Refresh',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                padding: EdgeInsets.all(14),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, "home"),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
                color: Color(0xffFE414D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
