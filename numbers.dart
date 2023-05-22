void Parse1() {
  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
}

void Parse2() {
  assert(num.parse('42') is int);
  assert(num.parse('0x42') is int);
  assert(num.parse('0.50') is double);
}

void Radix() {
  assert(int.parse('42', radix: 16) == 66);
}

void ToString() {
  // Convert an int to a string.
  assert(42.toString() == '42');

  // Convert a double to a string.
  assert(123.456.toString() == '123.456');

  // Specify the number of digits after the decimal.
  assert(123.456.toStringAsFixed(2) == '123.46');

  // Specify the number of significant figures.
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);
}

void main() {
  Parse1();
  Parse2();
  Radix();
  ToString();
}
