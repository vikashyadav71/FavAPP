import 'package:favapp/favorite_class_provider.dart';
import 'package:favapp/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'myfav.dart';
class favorite_class extends StatefulWidget {
  const favorite_class({Key? key}) : super(key: key);

  @override
  State<favorite_class> createState() => _favorite_classState();
}

class _favorite_classState extends State<favorite_class> {
  @override


  Widget build(BuildContext context) {
print('build') ;return Scaffold(backgroundColor: Colors.blue,

      appBar: AppBar(
        title: Text('SayFav',
        style: TextStyle(color: Colors.white,fontSize: 26),),
      actions: [Center(child: GestureDetector( child:Icon(
        Icons.favorite,

        color: Colors.white,
        size: 40.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
      onTap:(){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFav()));
      } ,))],

      ),

      body: Center(child:Column(
        children: [
          Expanded(
            child: ListView.builder(itemCount: 8,itemBuilder: (context,item){

              return Card(elevation: 0.3,
                color: Colors.white24,
                child:Consumer<favprovider>(builder:(context,value,child) {
                  return ListTile(title: Text('Item$item',),
                      onTap: (){value.fun(item);},

                      trailing:  value.lst.contains(item)? Icon(Icons.favorite):Icon(Icons.heart_broken_outlined)

                  );


                }));
    },),
          ),
        ],
      )


      ),
  );
}}

