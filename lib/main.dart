import 'package:favapp/Theme_class_provider.dart';
import 'package:favapp/favorite_class_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_class.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(


    providers: [ChangeNotifierProvider(  create:(_)=>favprovider()),
      ChangeNotifierProvider(  create:(_)=>ThemeChanger())],
    child: Builder(

      builder: (context) {final p=Provider.of<ThemeChanger>(context);
        return MaterialApp(home: favorite_class(),
        themeMode:p.theme,//yaha se hota hai theme set
        theme: ThemeData(//yeh iska khud ka option hai jo light yay dark ya rageen aur bi property hai jaisa tu chaiyte slect kr sakta hai
            brightness:Brightness.light,primaryColor: Colors.red),
        darkTheme: ThemeData(brightness: Brightness.dark),);//ab yeh darktheme asise aue bi hote hai check k saka
        //hai bs ab yaha theme li aur bata  diya ki dark ya bright ho kayegi us  krne par toh ab using
        //themeMode par ham set kr rhe hai ab listen kr rhe hai rk option se input lekar ki krna  kya hai
        //phir vha update hote hi yaha provide se update lkr denge aur chill
        //
      }
    ));
  }
}


