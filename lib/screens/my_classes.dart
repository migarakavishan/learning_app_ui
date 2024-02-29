import 'package:flutter/material.dart';
import 'package:learning_app_ui/models/class_models.dart';

class MyClasses extends StatefulWidget {
  const MyClasses({super.key});

  @override
  State<MyClasses> createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  List<ClassModel> classes = [
    ClassModel(
        image:
            'https://www.euroschoolindia.com/wp-content/uploads/2023/10/what-is-vedic-mathss-for-kids-jpg.webp',
        name: "Mathematics",
        studentCount: 200),
    ClassModel(
        image:
            'https://www.philosophytalk.org/sites/default/files/styles/large_blog__900x400_/public/silhouette-musical-note-clef-b.jpg',
        name: "Music",
        studentCount: 150),
    ClassModel(
        image:
            'https://writingsonthewall.in/cdn/shop/articles/Why-abstract-art-is-beautiful-Writings-On-The-Wall-911.jpg?v=1675103060',
        name: "Art",
        studentCount: 375),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Friends"),
        BottomNavigationBarItem(icon: Icon(Icons.emoji_people_outlined), label: "Account")
      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "My Classes",
          style: TextStyle(
              color: Colors.purple, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.purple,
        ),
      ),
      body: ListView.builder(
        itemCount: classes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(classes[index].image),
            ),
            title: Text(classes[index].name),
            subtitle: Text('Student Count - ${classes[index].studentCount}'),
          );
        },
      ),
    );
  }
}
