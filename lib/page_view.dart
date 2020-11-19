import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  @override
  _PageViewOrnekState createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool yatayEksen = true;
  bool pageSnapping = true;
  bool reverseSira = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection:
                yatayEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: reverseSira,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("page changeden gelen index $index");
            },
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo.shade300,
                child: Center(child: Column(
                  children: [
                    Text("sayfa 0", style: TextStyle(fontSize: 30),),
                    RaisedButton(onPressed: (){
                      myController.jumpToPage(2);
                    },
                    child: Text("2. sayfaya git"),),
                  ],
                ),),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.amber.shade300,
                child: Center(
                  child: Text(
                    "sayfa 1",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.teal.shade300,
                child: Center(
                  child: Text(
                    "sayfa 2 ",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("yatay eksende çalış "),
                      Checkbox(
                          value: yatayEksen,
                          onChanged: (b) {
                            setState(() {
                              yatayEksen = b;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("page sanping "),
                      Checkbox(
                          value: pageSnapping,
                          onChanged: (b) {
                            setState(() {
                              pageSnapping = b;
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("ters sırada çalış"),
                      Checkbox(
                          value: reverseSira,
                          onChanged: (b) {
                            setState(() {
                              reverseSira = b;
                            });
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
