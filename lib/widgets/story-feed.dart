// // ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:chatapp/const/constant.dart';
import 'package:chatapp/model/chatModel.dart';
import 'package:flutter/material.dart';

import '../model/messageModel.dart';
import 'bottom_Nav_Send.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
         child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:[ Padding(
              padding: EdgeInsets.only(right:10),
               child: Column(
                children: [
                CircleAvatar(
                  backgroundColor: mainColor,
                  child: Icon(Icons.add,color: Colors.white,size: 25,),
                  radius: 26,
                ),
                SizedBox(height: 5,),
                Text(
                  "Add Status",style: TextStyle(color:mainColor,fontWeight: FontWeight.w500),)
              ],
            ) ,
            ),
             Row(
              children: List.generate(dummyData.length,(i){
                return Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                        dummyData[i].seen
                        ?CircleAvatar(
                          backgroundImage: AssetImage(dummyData[i].avatarUrl,
                          ),
                          radius: 26,
                        )
                        :CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.green,
                          child: CircleAvatar(
                            radius: 24,
                           backgroundImage: AssetImage(dummyData[i].avatarUrl,
                           ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          dummyData[i].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: mainColor,
                          ),
                        ),
                        

                    ],
                  ),
                  );
              }),  
            ),
           
          ]),
            
        ),
      ),
    );
  }
}