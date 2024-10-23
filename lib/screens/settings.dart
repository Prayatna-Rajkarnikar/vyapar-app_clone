import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 25,
          ),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Colors.lightBlue[50],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.settings_rounded,
                size: 20,
              ),
              title: Text(
                'General',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 1,
              width: 360,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.currency_rupee_outlined,
                size: 20,
              ),
              title: Text(
                'Transaction',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 1,
              width: 360,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.print,
                size: 20,
              ),
              title: Text(
                'Invoice Print',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 1,
              width: 360,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.percent_outlined,
                size: 20,
              ),
              title: Text(
                'Taxes',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 1,
              width: 360,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.groups,
                size: 20,
              ),
              title: Text(
                'User Management',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 1,
              width: 360,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications_on,
                size: 20,
              ),
              title: Text(
                'Reminder',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 1,
              width: 360,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.group,
                size: 20,
              ),
              title: Text(
                'Party',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 1,
              width: 360,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.shape_line,
                size: 20,
              ),
              title: Text(
                'Items',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: Colors.grey[800]),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 1,
              width: 360,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
