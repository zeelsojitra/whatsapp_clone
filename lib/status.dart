import 'package:flutter/material.dart';
import 'package:whatsapp_clone/demo.dart';
import 'fake_api.dart';
import 'list.dart';

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            backgroundColor: Colors.grey,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.teal.shade300,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
            ),
          ),
        ],
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
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/image/zeel.JPG'),
                    ),
                    Positioned(
                      top: 30,
                      right: -15,
                      left: 20,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.teal,
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
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
              'Recent Update',
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
                    subtitle: Text(demo[index]['category'].toString()),
                    trailing: Text(demo[index]['rating']['count'].toString()),
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
