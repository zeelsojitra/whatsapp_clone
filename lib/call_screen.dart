import 'package:flutter/material.dart';

import 'fake_api.dart';

class call extends StatefulWidget {
  const call({Key? key}) : super(key: key);

  @override
  State<call> createState() => _callState();
}

class _callState extends State<call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_ic_call_outlined),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: IconButton(
                    icon: Icon(Icons.link),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Status',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Tap to add status update',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(
              'Recent',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: demo.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 2,
                          )),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(demo[index]['image']),
                      ),
                    ),
                    title: Text(
                      demo[index]['title'].toString(),
                      maxLines: 1,
                    ),
                    subtitle: Row(
                      children: [
                        index % 2 == 0
                            ? Icon(
                                Icons.call_made_outlined,
                                color: Colors.green,
                                size: 15,
                              )
                            : Icon(
                                Icons.call_received_outlined,
                                color: Colors.red,
                                size: 15,
                              ),
                        Text("S Decamber , 9:49 pm "),
                      ],
                    ),
                    trailing:
                        IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
