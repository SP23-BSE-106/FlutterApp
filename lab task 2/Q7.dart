class ComplexNumber {
  int real;
  int imag;

  ComplexNumber(this.real, this.imag);

  ComplexNumber operator +(ComplexNumber other) {
    return ComplexNumber(this.real + other.real, this.imag + other.imag);
  }

  @override
  String toString() {
    return '$real + ${imag}i';
  }
}

void main() {
  ComplexNumber n1 = ComplexNumber(4, 3);
  ComplexNumber n2 = ComplexNumber(1, 7);
  ComplexNumber sum = n1 + n2;

  print('($n1) + ($n2) = $sum');
}
