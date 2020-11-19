import "package:flutter/material.dart";

class TabOrnek extends StatefulWidget {
  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  var tabContreller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabContreller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Kullanımı"),
        bottom: tabBarim(),
      ),
      bottomNavigationBar: tabBarimBottom(),
      body: TabBarView(controller: tabContreller,
        children: [
          Container(
            color: Colors.redAccent,
            child: Center(child: Text("TAB 1", style: TextStyle(fontSize: 48),)),
          ),
          Container(
            color: Colors.redAccent,
            child: Center(child: Text("TAB 2", style: TextStyle(fontSize: 48),)),
          ),
          Container(
            color: Colors.redAccent,
            child: Center(child: Text("TAB 3", style: TextStyle(fontSize: 48),)),
          ),
        ],
      ),
    );
  }

  TabBar tabBarim() {
    return TabBar(
        controller: tabContreller,
        tabs: [
          Tab(
            icon: Icon(
              Icons.keyboard,
            ),
            text: "Tab1 ",
          ),
          Tab(
            icon: Icon(
              Icons.lock,
            ),
            text: "Tab2 ",
          ),
          Tab(
            icon: Icon(
              Icons.add_box,
            ),
            text: "Tab3 ",
          ),
        ],
      );
  }
  Widget tabBarimBottom() {
    return Container(
      color: Colors.tealAccent,
      child: TabBar(
        controller: tabContreller,
        tabs: [
          Tab(
            icon: Icon(
              Icons.keyboard,
            ),
            text: "Tab1 ",
          ),
          Tab(
            icon: Icon(
              Icons.lock,
            ),
            text: "Tab2 ",
          ),
          Tab(
            icon: Icon(
              Icons.add_box,
            ),
            text: "Tab3 ",
          ),
        ],
      ),
    );
  }
}
