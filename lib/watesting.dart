import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart'
    show MdiIcons;
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
    const ChatList(),
    const Updates(),
    const Communities(),
    const CallList()
  ];

  final appBars = [
    'WhatsApp',
    'Updates',
    'Communities',
    'Calls',
  ];

  final floatbuttons = [
    FloatingActionButton(
      onPressed: () {},
      child: const Icon(MdiIcons.messagePlus),
      foregroundColor: Colors.white,
      backgroundColor: const Color(0xff1DAB61),
    ),
    FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.camera_alt),
      foregroundColor: Colors.white,
      backgroundColor: const Color(0xff1DAB61),
    ),
    null,
    FloatingActionButton(
      onPressed: () {},
      child: const Icon(MdiIcons.phonePlus),
      foregroundColor: Colors.white,
      backgroundColor: const Color(0xff1DAB61),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBars[i],
          style: TextStyle(
              color: const Color(0xff1CAA61),
              fontWeight: FontWeight.bold,
              fontSize: 27),
        ),
        elevation: 0.2,
        shadowColor: const Color.fromARGB(255, 199, 196, 196),
        backgroundColor: const Color(0xffFFFFFF),
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
      floatingActionButton: floatbuttons[i],
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
                MdiIcons.update,
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
        return SingleChildScrollView(
          child: TextButton(
            onPressed: () {},
            child: ListTile(
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                backgroundColor: Color(0xffCFD6DC),
              ),
              title: Text(
                _items[index]["name"] ?? "",
                style: const TextStyle(
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
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class Updates extends StatefulWidget {
  const Updates({Key? key}) : super(key: key);

  @override
  _UpdatesState createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Transform.scale(
              scale: 0.75,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.edit),
                backgroundColor: Color.fromARGB(255, 245, 244, 244),
                foregroundColor: Color.fromARGB(255, 50, 50, 50),
              ),
            ),
            SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.camera),
              backgroundColor: Colors.teal,
            ),
          ],
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "   Status",
                  style: TextStyle(fontSize: 20),
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                backgroundColor: Color(0xffCFD6DC),
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "Tap to add status update",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Text(
              "    Recent Updates",
              style: TextStyle(fontSize: 14, color: Colors.grey),
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
              subtitle: Text(
                "Just now",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
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
              subtitle: Text(
                "11:00 am",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                backgroundColor: Color(0xffCFD6DC),
              ),
              title: Text(
                "Pavi",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Yesterday",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "    Viewed updates",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    size: 20,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              height: 25,
            ),
            Divider(
              color: Colors.white,
              thickness: 0.5,
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "   Channels",
                  style: TextStyle(fontSize: 20),
                ),
                Icon(
                  Icons.add,
                  size: 30,
                  //color: Colors.grey,
                ),
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 0.5,
              height: 10,
            ),
            Text(
                "     Stay updated on topics that matter to you. Find channels to",
                style: TextStyle(color: Colors.grey)),
            Text("     follow below.", style: TextStyle(color: Colors.grey)),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/logo.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "TN News",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor: Color(0xffD8FDD2),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/logo.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor: Color(0xffD8FDD2),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/logo.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor: Color(0xffD8FDD2),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/logo.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor: Color(0xffD8FDD2),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomCard(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 120,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/logo.png"),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Follow'),
                                    style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        backgroundColor: Color(0xffD8FDD2),
                                        foregroundColor:
                                            Color.fromARGB(255, 9, 46, 11)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      borderRadius: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Communities extends StatefulWidget {
  const Communities({Key? key}) : super(key: key);

  @override
  _CommunitiesState createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          children: [
            ListTile(
              leading: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 214, 214, 214)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(MdiIcons.accountGroup),
                  color: Colors.white,
                ),
              ),
              title: Text(
                "New community",
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(height: 10),
            Divider(
              color: Color.fromARGB(255, 212, 212, 212).withOpacity(.40),
              thickness: 10,
              height: 10,
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Ink(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: const Color.fromARGB(255, 214, 214, 214)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(MdiIcons.accountGroup),
                  color: Colors.white,
                ),
              ),
              title: Text('KSRCT '),
            ),
            SizedBox(
              height: 2,
            ),
            Divider(),
            ListTile(
              leading: Ink(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 148, 238, 151)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(MdiIcons.bullhorn),
                  color: Color.fromARGB(255, 9, 46, 11),
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Announcements",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    "01/05/2024",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              subtitle: Row(
                children: [
                  Text('Advisor: ', style: TextStyle(color: Colors.grey)),
                  Icon(
                    Icons.photo,
                    color: Colors.grey,
                  ),
                  Text(' Photo', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Ink(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 214, 214, 214)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.people_alt),
                  color: Colors.white,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "IT DEPARTMENT",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    "01/05/2024",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              subtitle: Text(
                '~Coordinator: Assemble at Auditorium',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  //color: Color.fromARGB(255, 214, 214, 214)
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_right),
                  color: Colors.grey,
                ),
              ),
              title: Text(
                'View all',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ));
  }
}

class CallList extends StatefulWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  _CallListState createState() => _CallListState();
}

class _CallListState extends State<CallList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xff1DAB61),
            ),
            child: IconButton(onPressed: () {}, icon: Icon(MdiIcons.link)),
          ),
          title: const Text("Create call link"),
          subtitle: Text(
            "Share a link for your WhatsApp call",
            style: TextStyle(color: Colors.grey),
          ),
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
                style: TextStyle(
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
                style: TextStyle(
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
