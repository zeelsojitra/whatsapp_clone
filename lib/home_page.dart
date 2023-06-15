import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  int tabSelected = 0;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(
            //icon: Icon(Icons.add),
            onSelected: (value) {
              if (value == 0) {
                log("0");
              } else if (value == 1) {
                log("1");
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("New Group"),
                value: 0,
              ),
              PopupMenuItem(
                child: Text("New broadcas"),
                value: 1,
              ),
              PopupMenuItem(child: Text("Lnked  devices")),
              PopupMenuItem(child: Text("Lnked  devices")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("LSettings")),
            ],
          )
        ],
        bottom: TabBar(
          controller: tabController,
          onTap: (value) {
            setState(() {
              tabSelected = value;
            });
          },
          //indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
          labelPadding: EdgeInsets.symmetric(vertical: 10),
          indicatorSize: tabSelected == 0
              ? TabBarIndicatorSize.label
              : TabBarIndicatorSize.tab,
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
            color: Colors.blue,
          ),
          Container(
            height: 500,
            color: Colors.green,
          ),
          Container(
            height: 500,
            color: Colors.yellow,
          ),
          Container(
            height: 500,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
