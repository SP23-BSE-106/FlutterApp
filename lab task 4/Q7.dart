class ComplexNumber {
  int real;
  int imag;

  ComplexNumber(this.real, this.imag);

  ComplexNumber operator +(ComplexNumber other) {
    return ComplexNumber(this.real + other.real,
     this.imag + other.imag);
  }

  @override
  String toString() {
    return "(${real} + ${imag}i)";
  }
}

void main() {
  ComplexNumber c1 = ComplexNumber(3, 4);
  ComplexNumber c2 = ComplexNumber(2, 5);
  ComplexNumber result = c1 + c2;

  print("${c1.toString()} + ${c2.toString()} = ${result.toString()}");
}
