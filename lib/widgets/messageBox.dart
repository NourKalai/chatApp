import 'package:chatapp/const/constant.dart';
import 'package:flutter/material.dart';


class MessageBox extends StatelessWidget {
  final String message;
  final bool isMe;
  const MessageBox({super.key,required this.message,required this.isMe});

  @override
  Widget build(BuildContext context) {
   if(isMe) {
     return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child:Container(
             decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
             ),
             child: Padding(
               padding: const EdgeInsets.all(13),
               child: Text(
                message,
                style: TextStyle(fontSize: 14),
               ),
             ),
    
          ),),
        ],
      ),
    );
   } else{
     return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child:Container(
             decoration: BoxDecoration(
              color: Color.fromARGB(255, 221, 228, 221),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
              )
             ),
             child: Padding(
               padding: const EdgeInsets.all(13),
               child: Text(
                message,
                style: TextStyle(fontSize: 14),
               ),
             ),
    
          ),),
        ],
      ),
    );
   }
  }
}