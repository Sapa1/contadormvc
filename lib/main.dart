import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Contador(),
    ),
  );
}

class Contador extends StatefulWidget {
  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  var resultado = 0;

  void _operation(Function(int, int) func) {
    setState(() {
      resultado = func(resultado, 1);
    });
  }

  int add(num1, num2) {
    return num1 + num2;
  }

  int sub(num1, num2) {
    return num1 - num2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Contador'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Você pressionou o botão:',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              '$resultado',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OperationFloatingActionButton(Icon(Icons.add), () {
            _operation(add);
          }),
          OperationFloatingActionButton(Icon(Icons.remove), () {
            _operation(sub);
          }),
        ],
      ),
    );
  }
}

class OperationFloatingActionButton extends StatelessWidget {
  final Function func;
  final Widget icon;

  OperationFloatingActionButton(this.icon, this.func, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: func,
      child: icon,
    );
  }
}
