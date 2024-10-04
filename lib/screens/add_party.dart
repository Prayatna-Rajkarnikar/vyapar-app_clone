import 'package:flutter/material.dart';

class AddParty extends StatelessWidget {
  const AddParty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Add New Party',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        body: Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Party Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Add party through contacts",
                          style: TextStyle(
                            color: Colors.blueAccent[400],
                            fontSize: 11,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(17.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Parties are people you do business with. Use them for invoices and to keep track of your payable & receivables.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 195,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'home');
                      },
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: const Text(
                        "Save & New",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 195,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'home');
                      },
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        backgroundColor: Colors.redAccent[700],
                      ),
                      child: const Text(
                        'Save Party',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
