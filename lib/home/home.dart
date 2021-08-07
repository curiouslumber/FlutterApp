import 'package:flutter/material.dart';
import 'text.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    List s = ["Sidebar", "Authentication", "API", "GetX", "BLoC"];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('My\'s Exp in Flutter'),
        ),
        body: Container(
          color: Colors.black87,
          padding: EdgeInsets.only(top: 8.0),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 4,
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
                        Navigator.pushNamed(context, '/second');
                      },
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
