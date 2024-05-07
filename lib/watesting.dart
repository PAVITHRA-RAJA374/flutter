import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  final tabs = [
    const Center(
      child: ChatList(),
    ),
    const Center(
      child: Text('Updates'),
    ),
    const Center(
      child: Text('communities'),
    ),
    const Center(
      child: CallList(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
              color: const Color(0xff1CAA61),
              fontWeight: FontWeight.bold,
              fontSize: 27),
        ),
        elevation: 0.2,
        shadowColor: Color.fromARGB(255, 199, 196, 196),
        backgroundColor: Color(0xffFFFFFF),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
      body: tabs[i],
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff1DAB61),
        onPressed: () {
          print('Floating action button');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle:
            const TextStyle(color: Colors.black, fontSize: 15),
        selectedLabelStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
        backgroundColor: Colors.white,
        currentIndex: i,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.black,
                size: 25,
              ),
              label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.update,
                color: Colors.black,
                size: 25,
              ),
              label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.groups,
                color: Colors.black,
                size: 25,
              ),
              label: 'Communities'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call_outlined,
                color: Colors.black,
                size: 25,
              ),
              label: 'Calls'),
        ],
        onTap: (currentIndex) {
          setState(() {
            i = currentIndex;
          });
        },
      ),
    );
  }
}

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List _items = [];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    try {
      final String response =
          await rootBundle.loadString('assets/json/sample.json');
      final data = jsonDecode(response);

      setState(() {
        _items = data["items"];
      });
    } catch (e) {
      print("Error reading JSON: $e");
    }
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            backgroundColor: Color(0xffCFD6DC),
          ),
          title: Text(
            _items[index]["name"] ?? "",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            _items[index]["msg"] ?? "",
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          trailing: Text(
            _items[index]["time"] ?? "",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        );
      },
    );
  }
}

class LinkButton extends StatelessWidget {
  final double w;
  final double h;
  final Color c;
  //final VoidCallback onClick;

  const LinkButton({
    super.key,
    required this.w,
    required this.h,
    required this.c,
    //required this.onClick
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: c, shape: BoxShape.circle),
      width: w,
      height: h,
      child: IconButton(
          onPressed: /* onClick */ () {},
          icon: Icon(
            Icons.link,
            color: Colors.white,
          )),
    );
  }
}

class CallList extends StatelessWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: LinkButton(
            w: 60,
            h: 60,
            c: Colors.green,
          ),
          title: Text("Create call link"),
          subtitle: Text("Share a link for your WhatsApp call"),
        ),
        Text(
          "    Recent",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            backgroundColor: Color(0xffCFD6DC),
          ),
          title: Text(
            "Alice",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.call_received, color: Colors.red, size: 15),
              Text(
                "15 July, 1:00 pm",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          trailing: Icon(
            Icons.call_outlined,
            color: Colors.green,
            size: 35,
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            backgroundColor: Color(0xffCFD6DC),
          ),
          title: Text(
            "Pavithra",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.call_made, color: Colors.green, size: 15),
              Text(
                "10 July, 11:00 am",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          trailing: Icon(
            Icons.call_outlined,
            color: Colors.green,
            size: 35,
          ),
        ),
      ],
    );
  }
}
