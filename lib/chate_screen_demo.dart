import 'package:flutter/material.dart';
import 'package:whatsapp_clone/list.dart';

class chate extends StatefulWidget {
  const chate({Key? key}) : super(key: key);

  @override
  State<chate> createState() => _chateState();
}

class _chateState extends State<chate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          icon: Icon(Icons.message),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            leading: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(data[index]['img']),
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.black12,
                            child: Text(
                              data[index]['name'],
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: double.infinity,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.message)),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.phone)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.video_call)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.info_outline)),
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
                radius: 25,
                backgroundImage: AssetImage(data[index]['img']),
              ),
            ),
            title: Text(
              data[index]['name'].toString(),
            ),
            subtitle: Text(
              data[index]['subtitle'].toString(),
            ),
            trailing: Text(
              data[index]['time'].toString(),
            ),
          );
        },
      ),
    );
  }
}
