import 'package:contadormvc/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String getCounter() {
    return model.counter.toString();
  }

  void incrementCounter() {
    model.modifierCounter(1, add); 
  }
int add(int number1, int number2) {
return number1 + number2;
}

}
