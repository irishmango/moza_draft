import 'package:flutter/material.dart';

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

class Experiments extends StatelessWidget {
  final List<Person> people = [
    Person(name: 'Alice', age: 25),
    Person(name: 'Bob', age: 30),
    Person(name: 'Charlie', age: 22),
  ];

  Experiments({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListTile Example')),
        body: ListView(
          shrinkWrap: true,
          children: people.map((person) => 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(person.name),
              subtitle: Text(person.age.toString()),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("You clicked on ${person.name}"),
                  duration: Duration(seconds: 2),)
                );
              },
              ),
          )
          ).toList()
        ),
      );
  }
}