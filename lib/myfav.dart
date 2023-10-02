import 'package:favapp/Themeclass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'favorite_class_provider.dart';

class MyFav extends StatefulWidget {
  const MyFav({Key? key}) : super(key: key);

  @override
  State<MyFav> createState() => _MyFavState();
}

class _MyFavState extends State<MyFav> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'SayFav',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
        actions: [
          Center(
            child: GestureDetector(
              child: Icon(
                Icons.list,
                color: Colors.white,
                size: 40.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
               onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>Theme_class()));
              },
            ),

          ),

        ],
      ),
      body: Center(
        child: Consumer<favprovider>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: value.lst.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0.3,
                        color: Colors.white24,
                        child: ListTile(
                          title: Text('Item' + value.lst[index].toString()),
                          onTap: () {
                            value.fun2(value.lst[index]);
                          },
                          trailing: Icon(Icons.favorite),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
