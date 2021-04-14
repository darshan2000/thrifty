

import 'package:flutter/cupertino.dart';
import 'package:thrifty/modules/home/data/model/thought_model.dart';

class ThoughtProvider extends ChangeNotifier{

 List<ThoughtModel> thoughts = List<ThoughtModel>();

 addThought(String text){
   print(text);
   thoughts.add(ThoughtModel(
     text: text,
     timeStamp: DateTime.now().millisecondsSinceEpoch
   ));
   notifyListeners();
 }


}