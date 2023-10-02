import 'package:favapp/Theme_class_provider.dart';
import 'package:favapp/favorite_class_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Theme_class extends StatefulWidget {
  const Theme_class({Key? key}) : super(key: key);

  @override
  State<Theme_class> createState() => _Theme_classState();
}

class _Theme_classState extends State<Theme_class> {
  @override
  Widget build(BuildContext context) {
    final p=Provider.of<ThemeChanger>(context);
    return Scaffold(appBar: AppBar(title: Text('THemes'),),
      body: Column(children: [
        RadioListTile<ThemeMode>(title:Text('Light Theme'),value:ThemeMode.light, groupValue:p.theme, onChanged: p.setTheme),
        RadioListTile<ThemeMode>(title:Text('Dark Theme'),value:ThemeMode.dark, groupValue:p.theme, onChanged: p.setTheme),
        RadioListTile<ThemeMode>(title:Text('System Theme'),value:ThemeMode.system, groupValue:p.theme, onChanged: p.setTheme)
      ],
      ),
    );
  }
}
