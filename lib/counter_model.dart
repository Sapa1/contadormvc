class CounterModel {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  int modifierCounter(int valor, Function(int, int) operation) {
    _counter = operation(valor, _counter);
  }
}