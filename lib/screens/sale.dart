import 'package:flutter/material.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({super.key});

  @override
  _SaleScreenState createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  bool isCreditSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Sale',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          ToggleButtons(
            borderRadius: BorderRadius.circular(30),
            constraints: const BoxConstraints(minHeight: 25, minWidth: 80),
            isSelected: [isCreditSelected, !isCreditSelected],
            onPressed: (index) {
              setState(() {
                isCreditSelected = index == 0;
              });
            },
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Credit'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Cash'),
              ),
            ],
          ),
          const SizedBox(
            width: 25,
          ),
          const Icon(Icons.settings),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Text(
                      'Invoice No.',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '2',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      'Date:',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Ashoj 12, 2081',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
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
                          labelText: 'Customer *',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 45,
                      width: 370,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.blueAccent[400],
                        ),
                        label: Text(
                          'Add Items (Optional)',
                          style: TextStyle(color: Colors.blueAccent[400]),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount',
                    style: TextStyle(fontSize: 18),
                  ),
                  Column(
                    children: [
                      Text(
                        'Rs 5000',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '----------',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  width: 165,
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
                  width: 165,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'home');
                    },
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      backgroundColor: Colors.blueAccent[400],
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.share))
              ],
            )
          ],
        ),
      ),
    );
  }
}
