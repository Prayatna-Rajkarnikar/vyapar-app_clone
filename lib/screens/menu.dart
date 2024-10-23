import 'package:flutter/material.dart';
import 'package:vyapar_app/screens/notifications.dart';
import 'package:vyapar_app/screens/profile.dart';
import 'package:vyapar_app/screens/settings.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'My Business',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.currency_rupee,
                        size: 20,
                      ),
                      title: Text(
                        'Sale',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.shopping_cart,
                        size: 20,
                      ),
                      title: Text(
                        'Purchase',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.account_balance_wallet,
                        size: 20,
                      ),
                      title: Text(
                        'Expenses',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.storefront,
                        size: 20,
                      ),
                      title: Text(
                        'My Online Store',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.bar_chart,
                        size: 20,
                      ),
                      title: Text(
                        'Reports',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Cash & Bank',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.savings,
                        size: 20,
                      ),
                      title: Text(
                        'Bank Accounts',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.money,
                        size: 20,
                      ),
                      title: Text(
                        'Cash In-Hand',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.credit_card,
                        size: 20,
                      ),
                      title: Text(
                        'Cheques',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.percent,
                        size: 20,
                      ),
                      title: Text(
                        'Loan Accounts',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Important utilities',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.sync,
                        size: 20,
                      ),
                      title: Text(
                        'Sync & Share',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.manage_history,
                        size: 20,
                      ),
                      title: Text(
                        'Manage Companies',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.backup,
                        size: 20,
                      ),
                      title: Text(
                        'Backup/Restore',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.cases,
                        size: 20,
                      ),
                      title: Text(
                        'Utilites',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Others',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.workspace_premium,
                        size: 20,
                      ),
                      title: Text(
                        'Vyapar Premium',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.desktop_windows,
                        size: 20,
                      ),
                      title: Text(
                        'Get Desktop Billing Software',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.call,
                        size: 20,
                      ),
                      title: Text(
                        'Greetings & Offers',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.settings,
                        size: 20,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.support_agent,
                        size: 20,
                      ),
                      title: Text(
                        'Help & Support',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.star_sharp,
                        size: 20,
                      ),
                      title: Text(
                        'Rate this app',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey[800]),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/menu.jpg')),
          ],
        ),
      ),
    );
  }
}
