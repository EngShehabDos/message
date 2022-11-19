import 'package:flutter/cupertino.dart';

import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';





class  ChatSample extends StatelessWidget {
var send='';
var hourSend='';
var receive='';
var hourReceive='';
  ChatSample(var a , var b , var c , var d){
    this.send=a;
    this.receive=b;
    this.hourSend=c;
    this.hourReceive=d;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    //     Padding(padding: EdgeInsets.only(left: 80),
    //       child:  ClipPath(
    //       clipper: ThreeRoundedEdgesMessageClipper(MessageType.send),
    // child: Container(
    //    alignment: Alignment.centerLeft,
    //   padding: EdgeInsets.all(20),
    // decoration: BoxDecoration(color: Colors.cyan,
    // ),
    //
    // )
    //       ),
    //     ),
        ///send
        ///
    Container(
    alignment: Alignment.centerRight,
    child: Padding
    (padding: EdgeInsets.only(top: 10 , left: 80),
    child:  ClipPath(
    clipper: ThreeRoundedEdgesMessageClipper(MessageType.send),
    child: Container(
    padding: EdgeInsets.only(left: 20,top: 10, bottom: 25 , right: 20),
    decoration: BoxDecoration(color: Colors.cyan,
    ),
      child:Text('$send',
        style:TextStyle(fontSize: 20 , color: Colors.white) ,

      ),

    )
    )
    )
    )
    ,
        ///
        Container(
            // alignment: Alignment.centerRight,
            child: Padding
            (padding: EdgeInsets.only(top: 5 ,left: 290),
    child: Text(" $hourSend",
    style:TextStyle(fontSize: 16 , color: Colors.amber),
            )
            )
            ),


        ////
        Container(
          alignment: Alignment.centerLeft,
          child: Padding
            (padding: EdgeInsets.only(top: 10 , right: 80 ,),
            child:  ClipPath(
              clipper: ThreeRoundedEdgesMessageClipper(MessageType.receive),
              child: Container(
                padding: EdgeInsets.only(left: 20,top: 10, bottom: 25 , right: 20),
                 decoration: BoxDecoration(color: Colors.tealAccent,
                 ),
                child:Text('$receive',
                  style:TextStyle(fontSize: 20,) ,

                ),

              ),

            ),

          ),

        ),

        Container(
            // alignment: Alignment.centerLeft,
            child: Padding
              (padding: EdgeInsets.only(top: 5,left: 15),
                child: Text("$hourReceive",
                  style:TextStyle(fontSize: 16 , color: Colors.amber),
                )
            )
        ),

      ],


    );
  }
}




// class sendText extends StatelessWidget{
//   String send='';
//   sendText(String sendd){
//     this.send=sendd;
//   }
//   Widget build(BuildContext context) {
//    return Column(
//      children: [
//        Padding(padding:  EdgeInsets.only(),
//     child:Text('$send',
//            style:TextStyle(fontSize: 20),
//          ),
//        )
//      ],
//      );
//   }
//
//
// }

//child:Text("Please help me dad, How can I get more call free",
//            style:TextStyle(fontSize: 20),
//          ),
//
// boxShadow: [
//   BoxShadow(
//     color: Colors.grey.withOpacity(0.10),
//     spreadRadius: 2,
//     blurRadius:10,
//     offset: Offset(3,3),
//   ),]


// boxShadow: [
//   BoxShadow(
//     color: Colors.grey.withOpacity(0.5),
//     spreadRadius: 2,
//     blurRadius:10,
//     offset: Offset(0,3),
//   ),
// ]