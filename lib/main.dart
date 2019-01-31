import "package:flutter/material.dart";
import "dart:core";
import "package:hello_world/basic_layout.dart";

void main() {
  runApp(MaterialApp(home: HelloWorldApp()));
}

List<Widget> generateRows(BuildContext context) {

  var allRows = List<Widget>();
  for(var i = 0; i < 20; i++) {
    allRows.add(
      GestureDetector(
        onTap: () {
          Navigator.push(context, 
          MaterialPageRoute(
            builder: (context) => BasicLayout()));
        },
        child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.network('http://tech4hood.org/img/team/03.jpg', width: 50, height: 50,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Vladimir Heredia", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                      Text("vheredia05@gmail.com", style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  )
                ],
              ),
            ),
      )
          );
  }

  return allRows;
}

class HelloWorldApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello World"),
        elevation: 0.0,
      ),
      body: ListView(
        children: generateRows(context),
      )
    );
  }
}

class DetailsPage extends StatefulWidget {

  String textValue = "Hello world";

  @override
  State<StatefulWidget> createState() {

    return DetailsPageStateful();
  }

}

class DetailsPageStateful extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Im on the otherp age")
      ),
      body: Column(
        children: <Widget>[
          Text(widget.textValue),
          RaisedButton(
            onPressed: () {
              setState(() {
                widget.textValue = "I just got clicked";
              });
            },
            child: Text("Click me and you will s ee"),
          )
        ],
      )
    );
  }
  
}