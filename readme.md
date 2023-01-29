# SCREENING MAGANG BINA KARIR x KAMPUS MERDEKA

---

## SOAL

## SOAL 1

Buatlah penyelesaian dari soal berikut dengan bahasa pemrograman yg anda kuasai untuk menampilkan N buah bilangan ganjil pertama. Testcase:

| Input  | Output                   |
| ------ | ------------------------ |
| N = 4  | 1 3 5 7                  |
| N = 2  | 1 3 5                    |
| N = 10 | 1 3 5 7 9 11 13 15 17 19 |

## SOAL 2

Buat penyelesaian soal berikut dengan bahasa pemrograman yg anda kuasai untuk menentukan sebuah kalimat apakah termasuk palindrome atau bukan. Palindrome adalah adalah suatu kata, frasa, angka, maupun susunan lainnya apabila dibaca dari depan atau belakang bunyinya tetap sama. Testcase:

| Input                             | Output           |
| --------------------------------- | ---------------- |
| "A man, a plan, a canal : Panama" | palindrome       |
| "race a car"                      | bukan palindrome |

## SOAL 3

Dari kedua table, buat satu struktur table transaksi yg paling efektif untuk menampung data user yg tergabung di satu asosiasi tertentu

**Tabel User**
Name | Type | Length
---|---|---
id | bigint | 20
username | varchar | 255
email | varchar | 255

**Tabel Asosiasi**
Name | Type | Length
---|---|---
id | bigint | 20
name | varchar | 255
description | text | 0

## SOAL 4

Berdasarkan table yg sudah dibuat di soal no 3, buat query untuk menampilkan data user mana terdaftar di asosasi apa. Contoh output:

| no  | username | asosiasi_name                  |
| --- | -------- | ------------------------------ |
| 1   | User001  | Asosiasi Mahasiswa Kedokteran  |
| 2   | User002  | Asosiasi Mahasiswa Informatika |

## SOAL 5

Buat satu script dengan bahasa pemrograman yg anda kuasai, untuk mendeklarasikan sebuah variabel bertipe data object dari sebuah class

## SOAL 6

Dari script dibawah ini, class Animal tersebut, buat sebuah class bernama Cat yang mewariskan sifat dari class Animal. Kemudian print/tampilkan function walk dengan cara membuat instance dari class Cat tanpa membuat ulang function walk di class Cat.

```java
class Animal {
    void walk() {
         System.out.println("Animal are walking");
         }
}
```

## PENYELESAIAN

## SOAL 1

Untuk menyelesaikannya saya menggunakan bahasa pemrograman dart. Berikut adalah penyelesaian dari soal tersebut.

```dart
void main() {
  stdout.write("Masukan N buah bilangan: ");

  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    stdout.write("${i * 2 - 1} ");
  }
}
```

berikut adalah hasilnya

![soal1](/ss/no1.png)

untuk file dart nya bisa dilihat di [satu.dart](/source_code/lib/satu.dart)

## SOAL 2

Untuk menyelesaikannya saya menggunakan bahasa pemrograman dart. Berikut adalah penyelesaian dari soal tersebut.

```dart
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
```

berikut adalah hasilnya

![soal2](/ss/no2.png)

untuk file dart nya bisa dilihat di [dua.dart](/source_code/lib/dua.dart)

## SOAL 3

Untuk menyelesaikannya saya menggunakan MSSQL. Berikut adalah penyelesaian dari soal tersebut.

```sql
-- TABEL TRANSAKASI
CREATE TABLE TRANSAKSI (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    association_id bigint NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES MY_USER (id),
    FOREIGN KEY (association_id) REFERENCES ASOSIASI (id)
);
```

Berikut adalah hasilnya

![soal3](/ss/no3a.png) 
![soal3](/ss/no3b.png)

untuk file query nya bisa dilihat di [sql](/database/3_dan_4_binakarirDB.sql)

## SOAL 4

Untuk menyelesaikannya saya menggunakan MSSQL. Berikut adalah penyelesaian dari soal tersebut.

```sql
-- menampilkan data user mana terdaftar di asosasi apa
SELECT u.username, a.name as asosiasi_name
FROM MY_USER u
JOIN TRANSAKSI t ON u.id = t.user_id
JOIN ASOSIASI a ON t.association_id = a.id;
```

Berikut adalah hasilnya

![soal4](/ss/no4.png)

untuk file query nya bisa dilihat di [sql](/database/3_dan_4_binakarirDB.sql)

## SOAL 5

Untuk menyelesaikannya saya menggunakan bahasa pemrograman dart. Berikut adalah penyelesaian dari soal tersebut.

```dart
class User {
  int id;
  String username;
  String email;
  String password;

  User(this.id, this.username, this.email, this.password);
}

void main() {
  User user = User(1, 'Kharisma', 'Kharisma@email.com', 'Kharisma123');
  print('username\t: ${user.username}');
  print('email\t\t: ${user.email}');
  print('password\t: ${user.password}');
}
```

berikut adalah hasilnya

![soal5](/ss/no5.png)

untuk file dart nya bisa dilihat di [lima.dart](/source_code/lib/lima.dart)

## SOAL 6

Untuk menyelesaikannya saya menggunakan bahasa pemrograman dart. Berikut adalah penyelesaian dari soal tersebut.

```dart
class Animal {
  void Walk(){
    print('Animal are walking');
  }
}

class Cat extends Animal{}

void main(){
  Cat cat = Cat();
  cat.Walk();
}
```

berikut adalah hasilnya

![soal6](/ss/no6.png)

untuk file dart nya bisa dilihat di [enam.dart](/source_code/lib/enam.dart)
