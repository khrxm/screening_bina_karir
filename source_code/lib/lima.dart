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
