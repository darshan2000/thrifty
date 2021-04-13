import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thrifty/modules/home/data/services/thought_provider.dart';
import 'package:thrifty/modules/utilities/app_text.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> imgs = ['one.jpg','two.png', 'three.png','one.jpg','two.png', 'three.png','one.jpg','two.png', 'three.png','one.jpg','two.png', 'three.png','one.jpg','two.png', 'three.png'];
  @override
  Widget build(BuildContext context) {
    ThoughtProvider thoughtProvider = Provider.of<ThoughtProvider>(context);
    var height = MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add, color: Colors.white,),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.only(left: width/30, right: width/30, top: height/30),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: width/7, height: width/7 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://images.unsplash.com/photo-1559548331-f9cb98001426?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
                        )
                      ),
                    ),
                    SizedBox(width: width/40,),
                    AppText.SubHeading(text: 'Good Morning Username', size: width/25)
                  ],
                ),
                Icon(
                  Icons.message_outlined, color: Colors.redAccent, size: width/10,
                )
              ],
            ),
            SizedBox(height: width/20,),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index){
                return SizedBox(height: width/30,);
              },
              itemCount: thoughtProvider.thoughts.length,
                itemBuilder: (context, index){
                  return Container(
                    height: height/3.5,
                    padding: EdgeInsets.all(width/40),
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/${imgs[index]}')
                      ),
                      borderRadius: BorderRadius.circular(width/40)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: width/9, height: width/9 ,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage('https://images.unsplash.com/photo-1559548331-f9cb98001426?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
                                  )
                              ),
                            ),
                            SizedBox(width: width/40,),
                            AppText.SubHeading(text: '@sarah', size: width/29)
                          ],
                        ),
                        SizedBox(height: width/30,),
                        Container(
                          padding: EdgeInsets.only(left: 14,right: 14,top: 14),
                          width: width,
                          height: height/5.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width/40),
                            
                          ),
                          child: Column(
                            children: [
                              Container(
                                  width: width,
                                  height: height/7.5,
                                  child: AppText.Content(text: thoughtProvider.thoughts[index].text)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  AppText.Content(text: '23 minutes ago', color: Colors.blueGrey, size: width/35)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

