import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thrifty/modules/home/data/services/thought_provider.dart';
import 'package:thrifty/modules/home/views/screens/home_page.dart';
import 'package:thrifty/modules/utilities/app_text.dart';
import 'package:thrifty/modules/home/views/widgets/text_box.dart';

class EntryScreen extends StatefulWidget {
  @override
  _EntryScreenState createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  List<String> imgs = ['one.jpg','two.png', 'three.png'];
 int count = 0;
 String thought = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ThoughtProvider thoughtProvider = Provider.of<ThoughtProvider>(context);

    var height = MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width/40),
        child: ListView(
          children: [
            SizedBox(height: width/10,),
            Center(
              child: AppText.SubHeading(text: 'Your first thought', size: width/20, color: Colors.black),
            ),
            SizedBox(height: width/15,),
            Center(
              child: AppText.SubHeadingS(text: 'What are you thinking about', size: width/23, color: Colors.black),
            ),
           // TextBox(),
            Padding(
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
                  child: Form(
                      key: _formKey,
                      child: Column(
                    children: [
                      TextFormField(
                        maxLines: 7,
                        onChanged: (text){
                          count = text.length;
                          thought = text;
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
                      ),

                    ],
                  )),
                ),
              ),
            ),
            SizedBox(height: width/15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height/15,
                  width: height/15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width/60),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.add, color: Colors.redAccent, size: width/10,),
                ),
                SizedBox(width:  width/40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding:  EdgeInsets.only(right: width/40),
                    child: Container(
                      height: height/15,
                      width: height/15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width/60),
                          color: Colors.black,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/${imgs[index]}')
                          )
                      ),
                    ),
                  )),
                ),
              ],
            ),
            SizedBox(height: width/9,),
            Center(
              child: GestureDetector(
                onTap: (){
                  _formKey.currentState.save();
                  thoughtProvider.addThought(thought);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
                },
                child: Container(
                  width: width/3,
                  height: height/17,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(width/20)
                  ),
                  child: Center(
                    child: AppText.SubHeading(text: 'Match!', color: Colors.white, size: width/22),
                  ),
                ),
              ),
            ),
            SizedBox(height: width/9,),
            AppText.SubHeading(text: 'Now Trending', size: width/25),
            SizedBox(height: width/30,),
            GestureDetector(
              onTap: (){
              },
              child: Container(
                width: width,
                height: height/2,
                child: GridView.count(
                 crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 2.2,
                  children: List.generate(6, (index) => Container(
                    width: width/3,
                    height: height/20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width/50),
                      border: Border.all(color: Colors.redAccent)

                    ),
                    child: Center(child: AppText.Content(text: 'College Classes', color: Colors.redAccent)),
                  )),

                ),
              ),
            )
            /*ListView.separated(
              shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Container(
                    height: height/15,
                    width: height/15,
                    color: Colors.black,
                  );
                },
                separatorBuilder:(context, index){ return SizedBox(width: width/30,);},
                itemCount: 5)*/
          ],
        ),
      ),
    );
  }
  bg(int index){
    if(index == 0){

    }
  }
}
