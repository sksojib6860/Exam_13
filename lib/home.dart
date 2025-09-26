import 'package:flutter/material.dart';

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatefulWidget {
  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<Map<String, String>> contacts = [
    {"name": "Javad", "phone": "01877-777777"},
    {"name": "Ferdous", "phone": "01757-777777"},
    {"name": "Hasan", "phone": "01745-777777"},
    {"name": "Shahin ", "phone": "01796-939393"},
    {"name": "Shaddam ", "phone": "01895-939543"},
    {"name": "Shah Alom ", "phone": "01745-939393"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                minimumSize: Size(double.infinity, 40),
              ),
              child: Text("Add", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.person, color: Colors.brown),
                      title: Text(
                        contact["name"]!,
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(contact["phone"]!),
                      trailing: Icon(Icons.phone, color: Colors.blue),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
