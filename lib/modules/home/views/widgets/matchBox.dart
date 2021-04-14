import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thrifty/modules/home/data/services/thought_provider.dart';
import 'package:thrifty/modules/utilities/app_text.dart';

Widget MatchBox(BuildContext context, String image, index) {
  ThoughtProvider thoughtProvider = Provider.of<ThoughtProvider>(context);
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return AlertDialog(
    contentPadding: EdgeInsets.all(0),
    title: ListTile(
      title: Text(
        "MATCH!",
        textAlign: TextAlign.center,
      ),
      subtitle: Text("You have a new Thoughtmate", textAlign: TextAlign.center),
    ),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            height: height / 2.5,
            width: width,
            child: ListView(
              children: [
                SizedBox(
                  height: height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width / 9,
                      height: width / 9,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1559548331-f9cb98001426?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'))),
                    ),
                    SizedBox(
                      width: width / 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        AppText.SubHeading(
                            text: '@sarah',
                            textAlign: TextAlign.right,
                            color: Colors.white,
                            size: width / 29),
                        SizedBox(
                          height: height / 60,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 14, right: 14, top: 14),
                          width: width / 1.6,
                          height: height / 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width / 40),
                          ),
                          child: Column(
                            children: [
                              Container(
                                  width: width,
                                  height: height / 20,
                                  child: AppText.Content(
                                      text: thoughtProvider
                                                  .thoughts[index].text.length >
                                              20
                                          ? thoughtProvider.thoughts[index].text
                                                  .substring(0, 15) +
                                              "..."
                                          : thoughtProvider
                                              .thoughts[index].text)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        AppText.SubHeading(
                            text: '@sarah',
                            textAlign: TextAlign.right,
                            color: Colors.white,
                            size: width / 29),
                        SizedBox(
                          height: height / 60,
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 14, right: 14, top: 14),
                          width: width / 1.6,
                          height: height / 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width / 40),
                          ),
                          child: Column(
                            children: [
                              Container(
                                  width: width,
                                  height: height / 20,
                                  child: AppText.Content(
                                      text: thoughtProvider
                                                  .thoughts[index].text.length >
                                              20
                                          ? thoughtProvider.thoughts[index].text
                                                  .substring(0, 15) +
                                              "..."
                                          : thoughtProvider
                                              .thoughts[index].text)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width / 50,
                    ),
                    Container(
                      width: width / 9,
                      height: width / 9,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1559548331-f9cb98001426?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'))),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            ))
      ],
    ),
    actions: <Widget>[
      new Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          height: height / 15,
          width: width,
          child: RaisedButton(
            color: Color(0xffFF5B5B),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.of(context).pop();
            },
            textColor: Colors.white,
            child: const Text('Start Talking!'),
          ),
        ),
      )
    ],
  );
}
