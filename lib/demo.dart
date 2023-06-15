import 'package:flutter/material.dart';

class demo1 extends StatefulWidget {
  const demo1({Key? key}) : super(key: key);

  @override
  State<demo1> createState() => _demo1State();
}

class _demo1State extends State<demo1> with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selected = 0;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watsaap"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          selected == 0
              ? PopupMenuButton(
                  onSelected: (value) {
                    setState(() {
                      if (value == 0) {
                        print("0");
                      }
                    });
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("setting"),
                      value: 0,
                    ),
                  ],
                )
              : selected == 1
                  ? PopupMenuButton(
                      onSelected: (value) {
                        setState(() {
                          if (value == 0) {
                            print("0");
                          }
                        });
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("New Group"),
                          value: 0,
                        ),
                        PopupMenuItem(
                          child: Text("New Brodcast"),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text("Linked device"),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Text("Stared message"),
                          value: 3,
                        ),
                        PopupMenuItem(
                          child: Text("Payment"),
                          value: 4,
                        ),
                        PopupMenuItem(
                          child: Text("Setting"),
                          value: 5,
                        ),
                      ],
                    )
                  : selected == 2
                      ? PopupMenuButton(
                          onSelected: (value) {
                            setState(() {
                              if (value == 0) {
                                print("0");
                              }
                            });
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text("Status Privacy"),
                              value: 0,
                            ),
                            PopupMenuItem(
                              child: Text("Setting"),
                              value: 1,
                            ),
                          ],
                        )
                      : PopupMenuButton(
                          onSelected: (value) {
                            setState(() {
                              if (value == 0) {
                                print("0");
                              }
                            });
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text("Clear call log"),
                              value: 0,
                            ),
                            PopupMenuItem(
                              child: Text("Setting"),
                              value: 1,
                            ),
                          ],
                        ),
        ],
        bottom: TabBar(
          controller: tabController,
          labelPadding: EdgeInsets.symmetric(vertical: 10),
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          tabs: [
            Icon(Icons.group),
            Text("CHETS"),
            Text("STATUS"),
            Text("CALL"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
            height: 500,
            color: Colors.red,
          ),
          Container(
            height: 500,
            color: Colors.grey,
          ),
          Container(
            height: 500,
            color: Colors.green,
          ),
          Container(
            height: 500,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
