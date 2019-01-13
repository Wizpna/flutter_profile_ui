import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: new Text('Profile Screen'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: new Container(
        height: 700.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Container(
              height: 700.0,
              width: 320.0,
              color: new Color(0xff985de3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: <Widget>[
                    profilePage('Amadi Promise', 'Flutter Developer',
                        'Aba, Abia State', '100k', 'wizpna@gmail.com'),
                    myImages(),
                    forwardPage(),
                    backPage(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget profilePage(String profileName, String jobDescription, String location,
      String followerVal, String webLink) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: new Container(
              height: 330.0,
              decoration: BoxDecoration(
                color: Color(0xff5a348b),
                gradient: LinearGradient(
                  colors: [Color(0xff5a348b), Color(0xff5a348b)],
                  begin: Alignment.centerRight,
                  end: Alignment(-1.0, -1.0),
                ),
              ),
              child: new Container(
                height: 400.0,
                width: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xff5a348b),
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 110.0),
                          child: new Text(
                            profileName,
                            style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            jobDescription,
                            style: new TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: new Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xfff3c444),
                                      size: 20.0,
                                    ),
                                    new Text(
                                      location,
                                      style: new TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    )
                                  ],
                                ),
                              ),
                              new Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.favorite,
                                      color: Color(0xfff3c444),
                                      size: 20.0,
                                    ),
                                    new Text(
                                      followerVal,
                                      style: new TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: new Row(
                            children: <Widget>[
                              Icon(
                                Icons.link,
                                color: Color(0xfff3c444),
                                size: 20.0,
                              ),
                              new Text(
                                webLink,
                                style: new TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: new Image.asset(
                                  'images/facebook.png',
                                  color: Color(0xfff3c444),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Image.asset(
                                  'images/twitter.png',
                                  color: Color(0xfff3c444),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Image.asset(
                                  'images/linkedin.png',
                                  color: Color(0xfff3c444),
                                ),
                              ),
                              Image.asset(
                                'images/github.png',
                                color: Color(0xfff3c444),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Positioned myImages() {
  return Positioned(
      top: 0.0,
      left: 50.0,
      child: Padding(
        padding: const EdgeInsets.only(right: 100.0),
        child: new Container(
          width: 200.0,
          height: 200.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage('images/my.jpg'),
            ),
          ),
        ),
      ));
}

Positioned backPage() {
  return Positioned(
      bottom: 0.0,
      left: 0.0,
      child: Icon(
        Icons.arrow_back,
        color: Colors.amber,
        size: 40.0,
      ));
}

Positioned forwardPage() {
  return Positioned(
      bottom: 0.0,
      right: 0.0,
      child: Icon(
        Icons.arrow_forward,
        color: Colors.amber,
        size: 40.0,
      ));
}
