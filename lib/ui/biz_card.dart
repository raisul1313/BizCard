import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " BizCard",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard(), _getAvatar()],
        ),
      ),
    );
  }

  //card
  _getCard() {
    return Container(
      width: 350,
      height: 250,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Raisul Islam",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mail_outline),
              SizedBox(
                width: 5.0,
              ),
              Text("Gmail: raisul.islam1313@gmail.com"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              SizedBox(
                width: 5.0,
              ),
              Text("Facebook: raisul.islam.3333")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.link),
              SizedBox(
                width: 5.0,
              ),
              Text("Github: raisul.islam.1313")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.games),
              SizedBox(
                width: 5.0,
              ),
              Text("Game: Black cadaver")
            ],
          ),
        ],
      ),
    );
  }

  //round image
  _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        border: Border.all(color: Colors.orange, width: 1.5),
        image: DecorationImage(
            image: NetworkImage("https://picsum.photos/300/300"),
            fit: BoxFit.cover),
      ),
    );
  }
}
