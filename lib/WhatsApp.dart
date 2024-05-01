import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      child: chatlist(),
    ),
    const Center(
      child: Text('Updates'),
    ),
    const Center(
      child: Text('communities'),
    ),
    const Center(
      child: Text('calls'),
    ),
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

class chatlist extends StatelessWidget {
  const chatlist({super.key});

  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 8,
                  color: Colors.white,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    backgroundColor: Color(0xffCFD6DC),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pavithra',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      Text('8:00 pm',
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                  subtitle: Row(children: [
                    Icon(
                      Icons.check,
                      size: 15,
                      color: Colors.grey,
                    ),
                    Text(
                      'hello',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ]),
                )
              ],
            ));
  }
}
