import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isAllTransactionsSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
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
                        isAllTransactionsSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isAllTransactionsSelected
                          ? Colors.white
                          : Colors.red[100],
                      side: BorderSide(
                        color: isAllTransactionsSelected
                            ? Colors.grey[100]!
                            : Colors.red,
                        width: 1,
                      ),
                    ),
                    child: Text("App Notifications",
                        style: TextStyle(
                            color: isAllTransactionsSelected
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
                        isAllTransactionsSelected = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isAllTransactionsSelected
                          ? Colors.red[100]
                          : Colors.white,
                      side: BorderSide(
                        color: isAllTransactionsSelected
                            ? Colors.red
                            : Colors.grey[100]!,
                        width: 1,
                      ),
                    ),
                    child: Text("All Transactions",
                        style: TextStyle(
                            color: isAllTransactionsSelected
                                ? Colors.redAccent[700]
                                : Colors.grey[600])),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: isAllTransactionsSelected
                ? const AllTransactions()
                : const AppNotifications(),
          ),
        ],
      ),
    );
  }
}

class AppNotifications extends StatelessWidget {
  const AppNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Image.asset('assets/images/app_n.jpg'),
      ),
    );
  }
}

class AllTransactions extends StatelessWidget {
  const AllTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Image.asset("assets/images/transaction_n.jpg"),
      ),
    );
  }
}
