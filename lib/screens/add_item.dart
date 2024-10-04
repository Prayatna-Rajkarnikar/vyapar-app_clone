import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Add Item",
            style: TextStyle(fontWeight: FontWeight.w500)),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.blueAccent[400],
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.grey[200],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(17),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("Item Name *"), border: OutlineInputBorder()),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 390,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'home');
              },
              style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  backgroundColor: Colors.redAccent[700]),
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
