import 'package:flutter/material.dart';
import 'chats.dart';
import 'status.dart';
import 'calls.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(34, 209, 253, 228),
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.5,
            ),
          ),
          actions: const [Icon(Icons.camera_alt), Icon(Icons.more_vert)],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 480,
              child: TextField(
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: 'Ask Meta AI or Search',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [custbutton()],
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    custlisttile(),
                    custlisttile(),
                    custlisttile(),
                    custlisttile(),
                    custlisttile(),
                    custlisttile(),
                    custlisttile(),
                    custlisttile(),
                    custlisttile(),
                    custlisttile(),
                  ],
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Color.fromARGB(255, 198, 196, 196),
                  child: Icon(
                    Icons.person_2_outlined,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                accountName: Text(
                  "Burhan Ali",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                accountEmail: Text(
                  "Burhan.Ali11556688@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                tileColor: Colors.white,
                title: const Text("Chats"),
                trailing: const Icon(Icons.message_outlined),
                onTap: () {
                  Navigator.pop(context);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatsView()),
                  );
                },
              ),
              const SizedBox(height: 3),
              ListTile(
                tileColor: Colors.white,
                title: const Text("Status"),
                trailing: const Icon(Icons.check_circle_outline),
                onTap: () {
                  Navigator.pop(context);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StatusView()),
                  );
                },
              ),
              const SizedBox(height: 3),
              ListTile(
                tileColor: Colors.white,
                title: const Text("Calls"),
                trailing: const Icon(Icons.call),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatsView(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget custbutton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(
        onPressed: () {},
        child: const Text(
          "All",
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Unread",
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Read",
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text(
          "Groups",
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
    ],
  );
}

Widget custlisttile() {
  return const Column(
    children: [
      ListTile(
        tileColor: Colors.white,
        leading: CircleAvatar(
          radius: 30.0,
          backgroundColor: Color.fromARGB(255, 198, 196, 196),
          child: Icon(
            Icons.person_2_outlined,
            size: 30.0,
            color: Colors.white,
          ),
        ),
        title: Text("New Message"),
        subtitle: Text("Hi! There I am new on WhatsApp"),
        trailing: Icon(Icons.message_outlined),
      ),
    ],
  );
}
