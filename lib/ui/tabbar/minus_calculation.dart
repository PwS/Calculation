part of 'tabbar.dart';

class MinusCalculationPages extends StatefulWidget {
  @override
  _MinusCalculationPagesState createState() => _MinusCalculationPagesState();
}

class _MinusCalculationPagesState extends State<MinusCalculationPages> {
  int valueA;
  int valueB;
  int result;

  var _controllervalueA = TextEditingController();
  var _controllervalueB = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(bottom: 5),
        child: Column(
          children: <Widget>[
            form(),
            SizedBox(height: 20),
            buttonCalculate(),
          ],
        ),
      ),
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
      child: Form(
        child: Column(
          children: <Widget>[
            inputA(),
            SizedBox(height: 40.0),
            inputB(),
          ],
        ),
      ),
    );
  }

  Widget inputA() {
    return TextFormField(
      controller: _controllervalueA,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Value A',
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  Widget inputB() {
    return TextFormField(
      controller: _controllervalueB,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Value B',
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  Widget buttonCalculate() {
    return RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      onPressed: () {
        print("Button On Press");
        calculate();
      },
      textColor: Colors.white,
      padding: EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: [Colors.red, Colors.yellow, Colors.green],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text('Calculate Minus', style: TextStyle(fontSize: 20)),
      ),
    );
  }

  void calculate() {
    int numberA = int.parse(_controllervalueA.text.toString());
    int numberB = int.parse(_controllervalueB.text.toString());
    result = numberA - numberB;
    print("Hasil Perhitungan A + B adalah $result");
  }
}
