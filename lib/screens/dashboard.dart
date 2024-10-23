import 'package:flutter/material.dart';
import 'package:vyapar_app/screens/notifications.dart';
import 'package:vyapar_app/screens/profile.dart';
import 'package:vyapar_app/screens/sale.dart';
import 'package:vyapar_app/screens/settings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Notifications()),
              );
            },
            icon: const Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
            icon: const Icon(Icons.settings),
          ),
          const SizedBox(width: 10),
        ],
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          },
          child: const Icon(Icons.person),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/dashboard.jpg')),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.redAccent[700],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SaleScreen()));
                },
                label: const Text(
                  'Add Sale Now',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.currency_rupee_rounded,
                  color: Colors.white,
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
