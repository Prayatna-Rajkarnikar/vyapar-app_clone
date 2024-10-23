import 'package:flutter/material.dart';
import 'package:vyapar_app/screens/notifications.dart';

class FirstInvoice extends StatelessWidget {
  const FirstInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Prayatna Rajkarnikar",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Notifications()),
              );
            },
            icon: const Icon(Icons.notifications_none),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter details to make your first Sale 🚀',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800]),
            ),
            Text(
              'First sale is made in less than a minute on Vyapar',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 25),
            TextField(
              decoration: InputDecoration(
                labelText: 'Customer Name*',
                labelStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500),
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(
                  width: 65,
                ),
                Expanded(
                  child: Text(
                    "Build items appear here",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_box),
                  label: Text(
                    'Add Sample Item',
                    style: TextStyle(
                      color: Colors.blueAccent[700],
                      fontSize: 12,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      iconColor: Colors.blueAccent[400],
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      backgroundColor:
                          const Color.fromARGB(255, 205, 228, 245)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Invoice Amount*',
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Received (if any)',
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  'Balance Due',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  'Rs',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "0.00",
                  style: TextStyle(
                      color: Colors.greenAccent, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton.icon(
                  icon: const Icon(
                    Icons.receipt,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'home');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 208, 206, 226),
                      elevation: 3,
                      iconColor: Colors.grey[50]),
                  label: Text(
                    "Create First Sale Invoice",
                    style: TextStyle(
                        color: Colors.grey[50], fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
