import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _list = [
    {
      "logo1":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4ee.png",
      "name1": "Tottenham Hotspur",
      "result": "3:1",
      "logo2":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4ec.png",
      "name2": "Newcastle United"
    },
    {
      "logo1":
          "https://assets.stickpng.com/thumbs/5a5e128c9fc8c9351ecc49c3.png",
      "name1": "Kontinental Hockey ",
      "result": "1:0",
      "logo2":
          "https://assets.stickpng.com/thumbs/5a6213e1eace967f8e026a61.png",
      "name2": "Federal Hockey  "
    },
    {
      "logo1":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4cc.png",
      "name1": "Ajaccio  ",
      "result": "1:5",
      "logo2":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4cf.png",
      "name2": "Losc   "
    },
    {
      "logo1":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4d3.png",
      "name1": "Olympique Lyonnais",
      "result": "0:0",
      "logo2":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4d5.png",
      "name2": "Olympique De Marseille"
    },
    {
      "logo1":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4d1.png",
      "name1": "Ogc Nice ",
      "result": "6:5",
      "logo2":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4d6.png",
      "name2": "Sochaux"
    },
    {
      "logo1":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4df.png",
      "name1": "Arsenal ",
      "result": "1:4",
      "logo2":
          "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4d8.png",
      "name2": "Paris St Germain"
    }
  ];

  Widget _cartitem(
      {String logo1, String name1, String result, String logo2, String name2}) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.network(
                    logo1,
                    width: 70,
                    height: 70,
                  ),
                  Text(
                    name1,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    result,
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network(
                    logo2,
                    width: 70,
                    height: 70,
                  ),
                  Text(
                    name2,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        title: Text(
          "Match dates",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Container(
            width: 170,
            height: 21,
            color: Colors.deepPurple[900],
            child: Center(
              child: Text(
                "PREMIER LEAGUE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )),
          SizedBox(
            height: 5,
          ),
          Text(
            "Sun, 9/20",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.network(
                    "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4e1.png",
                    width: 70,
                    height: 70,
                  ),
                  Text(
                    "Chelsea F.C.",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "0:2",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  Text(
                    "45'",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.8), fontSize: 15),
                  )
                ],
              ),
              Column(
                children: [
                  Image.network(
                    "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c4e5.png",
                    width: 70,
                    height: 70,
                  ),
                  Text(
                    "Liverpool F.C.",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
              child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Premier league",
                  style: TextStyle(color: Colors.grey[800], fontSize: 30),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: _list.length,
                        itemBuilder: (context, index) {
                          return _cartitem(
                            logo1: _list[index]["logo1"],
                            logo2: _list[index]["logo2"],
                            name1: _list[index]["name1"],
                            name2: _list[index]["name2"],
                            result: _list[index]["result"],
                          );
                        }))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
