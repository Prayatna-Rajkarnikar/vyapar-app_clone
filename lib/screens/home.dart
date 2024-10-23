import 'package:flutter/material.dart';
import 'package:vyapar_app/screens/add_party.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.showBottomNav = false});

  final bool showBottomNav;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPartyDetailsSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(
                  width: 175,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPartyDetailsSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isPartyDetailsSelected
                          ? Colors.white
                          : Colors.red[100],
                      side: BorderSide(
                        color: isPartyDetailsSelected
                            ? Colors.grey[100]!
                            : Colors.red,
                        width: 1,
                      ),
                    ),
                    child: Text("Transaction Details",
                        style: TextStyle(
                            color: isPartyDetailsSelected
                                ? Colors.grey[600]
                                : Colors.redAccent[700])),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 175,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isPartyDetailsSelected = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isPartyDetailsSelected
                          ? Colors.red[100]
                          : Colors.white,
                      side: BorderSide(
                        color: isPartyDetailsSelected
                            ? Colors.red
                            : Colors.grey[100]!,
                        width: 1,
                      ),
                    ),
                    child: Text("Party Details",
                        style: TextStyle(
                            color: isPartyDetailsSelected
                                ? Colors.redAccent[700]
                                : Colors.grey[600])),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: isPartyDetailsSelected
                ? const PartyDetailsScreen()
                : const TransactionDetailsScreen(),
          ),
        ],
      ),
    );
  }
}

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/transaction.jpg')),
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
                  Navigator.pushNamed(context, 'sale');
                },
                label: const Text(
                  'Add New Sale',
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

class PartyDetailsScreen extends StatelessWidget {
  const PartyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/party.jpg')),
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
                          builder: (context) => const AddParty()));
                },
                label: const Text(
                  'Add New Party',
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
