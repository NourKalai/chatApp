// ignore_for_file: prefer_const_constructors

import 'package:chatapp/const/constant.dart';
import 'package:chatapp/model/chatModel.dart';
import 'package:chatapp/widgets/conversation_Screen.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft:containerRadius),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
               child: ListView.builder(
                itemCount: dummyData.length,
                itemBuilder: ( context, i)=> Column(
                children: [
                  ListTile(
                     //lets build connversation screen
                   onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ConversationScreen(
                      profilePic: dummyData[i].avatarUrl,
                      username: dummyData[i].name,
                      online:dummyData[i].online,
                      time:dummyData[i].time,
                    
                    ),
                    ),
                    );
                   },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        dummyData[i].avatarUrl,
                        ),
                        radius: 26,
                        child: dummyData[i].online
                        ? Container(
                          margin: const EdgeInsets.only(bottom: 40,right: 40),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            )
                          ),


                        ):Container()     
                    ),
                    title:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[i].name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        dummyData[i].time,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight:FontWeight.w500,
                        ),
                      )
                    ]),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            if(dummyData[i].seen)
                            Icon(Icons.done_all,
                            size: 18,
                            color: Colors.blue[600],
                            ),
                            const SizedBox(width: 5,),

                            Expanded(child: Text(
                              dummyData[i].message,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),),
                            if(dummyData[i].seen)
                            Container(
                              height: 15,
                              width: 15,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                ),
                              child: const Align(
                                child:Text("1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                                ) ,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    indent: 70,
                    endIndent: 20,
                  )
                ],
               )),
            ),
          ),
          );
  }
}

