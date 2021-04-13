import 'package:flutter/material.dart';
import 'package:thrifty/modules/utilities/app_text.dart';

class TextBox extends StatefulWidget {
  @override
  _TextBoxState createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(
        vertical: width/20
      ),
      child: Container(
        height: height/3.5,
        width: width,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(width/40),
            image: DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/images/one.jpg'))
        ),
        padding: EdgeInsets.all(width/19),
        child: Container(
          height: height/3,
          width: width,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(width/40),
          ),
          child: Form(child: Column(
            children: [
              TextFormField(
                maxLines: 7,
                onChanged: (text){
                  count = text.length;
                  setState(() {

                  });
              },
                decoration: InputDecoration(

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppText.Content(text: count.toString() +'/75 characters', size: width/32, color: Colors.grey[400] )
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
