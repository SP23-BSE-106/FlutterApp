class ComplexNumber {
  double real;
  double imaginary;
  ComplexNumber(this.real, this.imaginary);
  ComplexNumber operator +(ComplexNumber other) {
    return ComplexNumber(
      this.real + other.real,
      this.imaginary + other.imaginary,
    );
  }
  @override
  String toString() {
    return "${real.toInt()} + ${imaginary.toInt()}i";
  }
}
void main() {
  ComplexNumber c1 = ComplexNumber(3, 4);
  ComplexNumber c2 = ComplexNumber(2, 5);
  ComplexNumber result = c1 + c2;
  print("(${c1.toString()}) + (${c2.toString()}) = ${result.toString()}");
}
