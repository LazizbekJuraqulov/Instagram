import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  late int activpage;
  @override
  void initState() {
    activpage=0;
    setState(() {
      
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Instagram",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.access_alarm_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.redAccent,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/7.jpg"),
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 25,
            ),
          ),
          Expanded(
            flex: 8,
            child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.redAccent,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage("assets/7.jpg"),
                              ),
                            ),
                            title: Text(
                              "Jek Wilson",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: PopupMenuButton(
                              padding: EdgeInsets.all(5),
                              icon: Icon(Icons.more_horiz),
                              itemBuilder: ((context) {
                                return [
                                  //Popupmenuitmjkljj
                                  PopupMenuItem(child: Text("Setting")),
                                  PopupMenuItem(child: Text("Clear")),
                                  PopupMenuItem(child: Text("Copy")),
                                ];
                              }),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            width: double.infinity,
                            child: Image.asset(
                              "assets/7.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 38,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.comment, size: 38),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.send, size: 38),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child:
                                    Icon(Icons.bookmark_add_outlined, size: 38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:activpage,
        onTap: ((value) {
          activpage=value;
        }),
        
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
      ]),
    );
  }
}
