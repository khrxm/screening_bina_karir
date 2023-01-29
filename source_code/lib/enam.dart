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