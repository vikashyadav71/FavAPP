import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart%20';

class favprovider with ChangeNotifier{
  List<int>_lst=[];

  List<int> get lst=>_lst;

  void fun(int item){
    if(!_lst.contains(item)){_lst.add(item);}
    else {_lst.remove(item);

    }

    notifyListeners();
  }
  void fun2(int item){
    _lst.remove(item);
    notifyListeners();
  }


}