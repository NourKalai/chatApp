import 'package:chatapp/const/constant.dart';
import 'package:chatapp/model/messageModel.dart';
import 'package:chatapp/widgets/bottom_Nav_Send.dart';
import 'package:chatapp/widgets/messageBox.dart';
import 'package:flutter/material.dart';

class ConversationScreen extends StatelessWidget {

  final String username, profilePic,time;
  final bool online;
  const ConversationScreen({super.key,
   required this.username,
   required this.profilePic, 
   required this.time,
   required this.online});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child:  InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(0.6),
            ),
          ), 
          ),
          title: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                   image:AssetImage(profilePic),
                   fit: BoxFit.cover, 
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text(username,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,  ),
                 ),
                 online?  Row(
                  children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                   SizedBox(width: 3,),
                   Text("Active Now",
                    style: TextStyle(
                     color: Colors.grey,
                     fontSize: 12,),
                   ),
                  ] 
                  )
                  : Text(
                    time,
                    style:TextStyle(
                      color:Colors.grey,
                      fontSize: 12, ),
                  ),

                ] ),
           ]),
           actions: [
            IconButton(
             onPressed: (){}, 
             icon: Icon(Icons.videocam,size: 20),
             color: mainColor,
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.call,size: 20),
              color: mainColor,
            ),
            IconButton(
             onPressed: (){}, 
             icon: Icon(Icons.more_vert,size: 20),
             color: mainColor,
            ),
           ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          color: Colors.white,
          child: ListView(
            children: List.generate(
                //let's make a message model
                messages.length,
                (index){
                  return MessageBox(
                    isMe: messages[index][ 'isMe'],
                    message: messages[index]['message'],

              );
                }
          ),
        ),
      ),
      ),
      bottomSheet: BottomSendNavigation(),
    );
  }
}