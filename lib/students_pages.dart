import 'package:flutter/material.dart';

class StudentsPages extends StatelessWidget {
  const StudentsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students pages"),
      ),
      body: Column(children: [
        const PhysicalModel(
          color: Colors.white,
          elevation: 10,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
              child: Text("10 Teachers"),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Ali"),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 25,
          ),
        )
      ]),
    );
  }
}
