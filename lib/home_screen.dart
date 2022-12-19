import 'package:flutter/material.dart';
import 'package:habits/appbar_screen.dart';

import 'constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List _items = List.generate(3, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: CustomAppBar(
        icon: Icons.person,
        titleText: 'ABC',
      ),
      body: Column(
        children: [
          Expanded(
            child: ReorderableListView.builder(
              shrinkWrap: true,
                itemCount: 3,
                onReorder: (int oldIndex, int newIndex) {
                    setState(() {
                    if (oldIndex < newIndex) {
                     newIndex -= 1;
                     }
                      final int item = _items.removeAt(oldIndex);
                      _items.insert(newIndex, item);
                    });
                  },
                itemBuilder: (context, index) {
                  return Card(
                    key: Key('$index'),
                    color: Colors.white,
                    child: ListTile(

                      leading: const Text('8'),
                      title:  TextField(
                        decoration: const InputDecoration(
                            hintText: 'Habit Name',
                            hintStyle: TextStyle(color: Colors.black,),
                            border: InputBorder.none,
                           ),
                        style: const TextStyle(color: Colors.black,),
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.none,
                      ),
                      trailing: Icon(Icons.add,color: Colors.black,),
                    ),
                  );
                },
            ),
          )
        ],
      ),
    );
  }
}
