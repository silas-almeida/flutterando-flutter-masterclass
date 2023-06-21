void main(List<String> arguments) {
  final person = Person(name: 'Jacob', lastName: 'Moura');
  
  print(person.name);
  print(person.lastName);
}

class Person {
  //propriedades
  String name = 'Jacob';
  String lastName = 'Moura';

  Person({required this.name, required this.lastName});

  Person.fromJson(Map<String, dynamic> map);

  //métodos
  String getFullName() {
    return '$name $lastName';
  }
}
