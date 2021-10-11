void main() {
  Cat cat = Cat(age: 1, name: "Simon");
  Dog dog = Dog(age: 2, name: "Daisy");
  List<Pet> pets = [cat, dog];
  for (Pet pet in pets) {
    pet.makeSound();
  }
}

abstract class Pet {
  String _name = '';
  int _age = 0;
  String get name => _name;
  int get age => _age;

  void changeName(String name) {
    _name = name;
  }

  void makeSound();
}

class Dog extends Pet {
  Dog({String name = '', int age = 0}) {
    _name = name;
    _age = age;
  }
  @override
  void makeSound() {
    print("Woof");
  }
}

class Cat extends Pet {
  Cat({String name = '', int age = 0}) {
    _name = name;
    _age = age;
  }
  @override
  void makeSound() {
    print("Meow");
  }
}
