import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ChatBottomsheet.dart';
import 'package:project/ChatSample.dart';

class Message extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
    home:Home()
    );

  }}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(preferredSize: Size.fromHeight(70.0),
        child:Padding(padding: EdgeInsets.only(top: 5),
        child: AppBar(leadingWidth: 30,backgroundColor: Colors.white,
        title: Row(children: [ClipRRect(
          borderRadius: BorderRadius.circular(35)

        ),
          Padding(padding:EdgeInsets.only(left: 10),child: Text("Chat Screen" , style: TextStyle(color: Colors.blue),),),
        ],
        ),
          actions: [
            Padding(padding: EdgeInsets.only(right: 25),
              child: Icon(Icons.call,
            color:Colors.black,
              size: 30,)
            ),
            Padding(padding: EdgeInsets.only(right: 25),
                child: Icon(Icons.video_call,
                    color:Colors.black,
                size: 30,)
            ),
            Padding(padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.more_vert,
                    color:Colors.black,
                size: 28,)
            )

          ],
        ),
        )
      ),
          body: ListView(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20 , bottom: 80),
children: [
  ChatSample("Hello Eng.shehab, How are you" , 'I ame fine ','10:45 AM', '10:51 AM'),
  ChatSample('Have you completed the project, which he asked for you Eng.Asim?'
      , 'Yes, You have designed the interface for the conversation screen','11:03 AM', '11:05 AM'),
  ChatSample("Wonderful, I want to see him" , 'Well, we meet in the hall','11:10 AM' , '11:12 AM'),
  // ChatSample(),
  // ChatSample(),
]
    ,),
      bottomSheet: ChatBottomsheet(),
      );

  }
}
