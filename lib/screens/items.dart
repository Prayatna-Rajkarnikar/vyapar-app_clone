import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text(
          "Prayatna Rajkarnikar",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'notifications');
            },
            icon: const Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'settings');
            },
            icon: const Icon(Icons.settings),
          ),
          const SizedBox(width: 10),
        ],
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'profile');
          },
          child: const Icon(Icons.person),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Image.asset('assets/images/items.jpg'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent[700],
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.pushNamed(context, 'addItem');
                      },
                      label: const Text(
                        'Add New Item',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: const Icon(
                        Icons.storage,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
