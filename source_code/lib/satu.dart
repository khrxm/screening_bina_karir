import 'dart:io';

void main() {
  stdout.write("Masukan N buah bilangan: ");
  
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    stdout.write("${i * 2 - 1} ");
  }
}
