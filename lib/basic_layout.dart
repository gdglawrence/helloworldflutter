import "package:flutter/material.dart";

class BasicLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text("Sample Basic Layout",
          style: TextStyle(color: Colors.grey)
        ),
        backgroundColor: Colors.grey[300],
      ),
      body: Container(
        color: Colors.grey[300],
        padding: EdgeInsets.all(30),
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset.zero,
                      )
                    ]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                    height: 440,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.network('https://images.unsplash.com/photo-1548776849-df989915b003?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
                          color: Colors.blueAccent,
                          colorBlendMode: BlendMode.hue,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Developing Flutter Apps",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text("GDG Lawrence",
                                style: TextStyle(color: Colors.grey)
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text("These are the things that you can do with Flutter, as opposed to using other frameworks",
                                  style: TextStyle(fontSize: 12)
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 20),
                                child: Text("by Jane Doe",
                                  style: TextStyle(color: Colors.blueAccent, fontSize: 13)
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.location_on, color: Colors.blueAccent),
                                  Icon(Icons.email, color: Colors.blueAccent),
                                  Icon(Icons.pan_tool, color: Colors.blueAccent),
                                  Icon(Icons.group, color: Colors.blueAccent)
                                ],
                              )
                            ]
                          )
                        )
                      ],
                    )
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 200,
                child: ClipOval(
                  child: Image.network('https://images.unsplash.com/photo-1545946551-0b395ce5b5f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
                    width: 70, height: 70, fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}