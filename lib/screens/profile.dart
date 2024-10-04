import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class ProfileScreen extends StatefulWidget {
  final bool showBottomNav;

  const ProfileScreen({super.key, this.showBottomNav = false});
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isBusinessDetailSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Business Profile",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/profile.jpg'),
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
                        isBusinessDetailSelected = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isBusinessDetailSelected
                          ? Colors.white
                          : Colors.red[100],
                      side: BorderSide(
                        color: isBusinessDetailSelected
                            ? Colors.grey[100]!
                            : Colors.red,
                        width: 1,
                      ),
                    ),
                    child: Text("Basic Details",
                        style: TextStyle(
                            color: isBusinessDetailSelected
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
                        isBusinessDetailSelected = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isBusinessDetailSelected
                          ? Colors.red[100]
                          : Colors.white,
                      side: BorderSide(
                        color: isBusinessDetailSelected
                            ? Colors.red
                            : Colors.grey[100]!,
                        width: 1,
                      ),
                    ),
                    child: Text("Business Details",
                        style: TextStyle(
                            color: isBusinessDetailSelected
                                ? Colors.redAccent[700]
                                : Colors.grey[600])),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: isBusinessDetailSelected
                  ? const BusinessDetailsScreen()
                  : const BasicDetailsScreen(),
            ),
          ),
        ],
      ),
    );
  }
}

class BasicDetailsScreen extends StatefulWidget {
  const BasicDetailsScreen({super.key});

  @override
  State<BasicDetailsScreen> createState() => _State();
}

class _State extends State<BasicDetailsScreen> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Business Name",
                  hintStyle: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.normal),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Phone Number 1",
                  hintStyle: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.normal),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Phone Number 2",
                  hintStyle: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.normal),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email ID",
                  hintStyle: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.normal),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  hintText: "Business Address",
                  hintStyle: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.normal),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Pin Code",
                  hintStyle: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.normal),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                decoration: InputDecoration(
                  hintText: "Business Description",
                  hintStyle: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.normal),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Signature',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Signature(
                controller: _controller,
                width: 300,
                height: 150,
                backgroundColor: Colors.grey[200]!,
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Create'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Upload'),
                  ),
                ],
              ),
            ],
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
                  "Cancel",
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
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class BusinessDetailsScreen extends StatefulWidget {
  const BusinessDetailsScreen({super.key});

  @override
  State<BusinessDetailsScreen> createState() => _BusinessDetailsScreenState();
}

class _BusinessDetailsScreenState extends State<BusinessDetailsScreen> {
  final SingleValueDropDownController _businessController =
      SingleValueDropDownController();

  final SignatureController _signatureController = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
  );

  @override
  void dispose() {
    _businessController.dispose();
    _signatureController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: DropDownTextField(
            controller: _businessController,
            clearOption: true,
            textFieldDecoration: const InputDecoration(
              hintText: "Business Type",
              border: OutlineInputBorder(),
            ),
            dropDownList: const [
              DropDownValueModel(name: 'Retail', value: "retail"),
              DropDownValueModel(name: 'Wholesale', value: "wholesale"),
              DropDownValueModel(name: 'Distributor', value: "distributor"),
              DropDownValueModel(name: 'Service', value: "service"),
              DropDownValueModel(name: 'Manufacturing', value: "manufacturing"),
              DropDownValueModel(name: 'Other', value: "other"),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: DropDownTextField(
            controller: _businessController,
            clearOption: true,
            textFieldDecoration: const InputDecoration(
              hintText: "Business Category",
              border: OutlineInputBorder(),
            ),
            dropDownList: const [
              DropDownValueModel(name: 'Retail', value: "retail"),
              DropDownValueModel(name: 'Wholesale', value: "wholesale"),
              DropDownValueModel(name: 'Distributor', value: "distributor"),
              DropDownValueModel(name: 'Service', value: "service"),
              DropDownValueModel(name: 'Manufacturing', value: "manufacturing"),
              DropDownValueModel(name: 'Other', value: "other"),
            ],
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'Signature',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Signature(
          controller: _signatureController,
          width: 300,
          height: 150,
          backgroundColor: Colors.grey[200]!,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Create'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Upload'),
            ),
          ],
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
                  "Cancel",
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
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
