part of 'ui.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  String txt = '';

  //create controller untuk tabBar
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main"),
        /*leading: new Icon(Icons.menu), BuatNavDraw*/
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.access_time),
            onPressed: () {
              txt = 'This is Icon Akses Time';
              print(txt);
            },
          )
        ],
        bottom: TabBar(controller: controller, tabs: [
          Tab(
            icon: new Icon(Icons.home),
            text: "Home",
          ),
          Tab(
            icon: new Icon(Icons.add),
            text: "Plus",
          ),
          Tab(
            icon: new Icon(Icons.minimize),
            text: "Minus",
          ),
          Tab(
            icon: new Icon(Icons.star),
            text: "Multiplication",
          ),
          Tab(
            icon: new Icon(Icons.edit),
            text: "Division",
          ),
        ]),
      ),
      body: TabBarView(
        //controller untuk tab bar
        controller: controller,
        children: <Widget>[
          Home(),
          PlusCalculationPages(),
          MinusCalculationPages(),
          MultiplicationCalculationPages(),
          DivisionCalculationPages(),
        ],
      ),
    );
  }
}
