class CounterServices {
  var value = 0;
  addCounterValue() {
    value++;
    print(value);
  }

  getCounterValue() {
    return value;
  }
}
