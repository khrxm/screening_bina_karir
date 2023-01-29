import 'dart:io';

void main() {
  String input;
  bool isPalindrome = true;
  print("Masukkan kalimat: ");
  input = stdin.readLineSync()!;

// Menghilangkan spasi dan tanda baca
  input = input.replaceAll(RegExp(r'[^\w\s]'), '').toLowerCase();
  input = input.replaceAll(RegExp(r'\s'), '');
// Membandingkan setiap karakter dari depan dan belakang
  for (int i = 0; i < input.length; i++) {
    if (input[i] != input[input.length - 1 - i]) {
      isPalindrome = false;
      break;
    }
  }

  if (isPalindrome) {
    print("palindrome");
  } else {
    print("bukan palindrome");
  }
}
