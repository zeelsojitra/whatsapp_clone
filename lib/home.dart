import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chate_screen_demo.dart';
import 'package:whatsapp_clone/status.dart';

import 'call_screen.dart';
import 'chat_screen.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  int selected = 0;
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsaap"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          selected == 0
              ? PopupMenuButton(
                  onSelected: (value) {
                    setState(() {
                      if (value == 0) {
                        print("New Group");
                      }
                    });
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("Setting"),
                      value: 0,
                    ),
                  ],
                )
              : selected == 1
                  ? PopupMenuButton(
                      onSelected: (value) {
                        setState(() {
                          if (value == 0) {
                            print("New Group");
                          } else if (value == 1) {
                            print("New Broadcast");
                          } else if (value == 2) {
                            print("Link Device");
                          } else if (value == 3) {
                            print("Stared message");
                          } else if (value == 4) {
                            print("Payment");
                          } else if (value == 5) {
                            print("Setting");
                          }
                        });
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("New Group"),
                          value: 0,
                        ),
                        PopupMenuItem(
                          child: Text("New Broadcast"),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text("Link Device"),
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
                                print("New Group");
                              } else if (value == 1) {
                                print("New Broadcast");
                              }
                            });
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text("Status privacy"),
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
                                print("New Group");
                              } else if (value == 1) {
                                print("New Broadcast");
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
          indicatorSize: selected == 0
              ? TabBarIndicatorSize.label
              : TabBarIndicatorSize.tab,
          labelPadding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          tabs: [
            Icon(Icons.group),
            Text("CHATS"),
            Text("STATUS"),
            Text("CALLS"),
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
          chat_screen(),
          status(),
          call(),
        ],
      ),
    );
  }
}
