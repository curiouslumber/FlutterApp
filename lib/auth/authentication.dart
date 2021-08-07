import 'package:flutter/material.dart';
import '../home/text.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List s = [
      "Username/Password",
      "Google Sign In",
      "Facebook Sign In",
      "Register",
      "Forgot Password"
    ];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Authentication'),
      ),
      body: Container(
        color: Colors.black87,
        padding: EdgeInsets.only(top: 8.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              height: height / 8,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16.0),
                    alignment: Alignment.centerLeft,
                    color: Colors.black,
                    child: Text(
                      s[index],
                      style: TextStyle(
                          fontSize: AdaptiveTextSize()
                              .getAdaptiveTextSize(context, 20),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    //color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, '/google');
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
