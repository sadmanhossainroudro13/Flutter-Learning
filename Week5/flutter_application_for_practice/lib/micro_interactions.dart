import 'package:flutter/material.dart';

class DeletePractice extends StatefulWidget {
  const DeletePractice({super.key});

  @override
  State<DeletePractice> createState() => _DeletePracticeState();
}

class _DeletePracticeState extends State<DeletePractice> {
  _addItem() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add new Item"),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(hintText: "Add item list"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  if (_controller.text.isNotEmpty) {
                    items.add(_controller.text);
                    _controller.clear();
                  }
                  Navigator.pop(context);
                });
              },
              child: Text("Add"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  final TextEditingController _controller = TextEditingController();
  List<String> items = ["Phone", "Ipad", "Laptop", "Coffee", "Shorts"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Micro Interactions",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Roudro"),
                accountEmail: Text('shadmanroudro@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("asset/image/img.jpg"),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _addItem();
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.add, color: Colors.white),
        ),
        body: Center(child: _info()),
      ),
    );
  }

  Widget _info() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
          key: Key(item + index.toString()),

          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.delete, color: Colors.white),
          ),

          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("$item Deleted")));
          },

          child: Card(child: ListTile(title: Text("Items: ${items[index]}"))),
        );
      },
    );
  }
}
