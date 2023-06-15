import 'package:flutter/material.dart';

import 'fake_api.dart';

class chat_screen extends StatefulWidget {
  const chat_screen({Key? key}) : super(key: key);

  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    insetPadding: EdgeInsets.only(bottom: 300),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            demo[index]['image'],
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                            ),
                            child: Text(
                              demo[index]['title'],
                              maxLines: 1,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            height: 42,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.message,
                                      color: Colors.teal,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.phone,
                                      color: Colors.teal,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.video_call,
                                      color: Colors.teal,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.info_outline,
                                      color: Colors.teal,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(
                  demo[index]['image'],
                ),
              ),
            ),
            title: Text(
              demo[index]['title'].toString(),
              maxLines: 1,
            ),
            subtitle: Text(demo[index]['category'].toString()),
            trailing: Text(demo[index]['rating']['count'].toString()),
          );
        },
      ),
    );
  }
}
