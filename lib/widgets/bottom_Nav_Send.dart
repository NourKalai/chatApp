
import 'package:chatapp/const/constant.dart';
import 'package:flutter/material.dart';

class BottomSendNavigation extends StatelessWidget {
  const BottomSendNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Container(
              width:MediaQuery.of(context).size.width - 55,
              child: Card(
                margin: EdgeInsets.only(left:2,right: 2,bottom: 8 ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type a message",
                    prefixIcon: IconButton(
                      onPressed: (){},
                       icon: Icon(Icons.emoji_emotions,
                       ),
                       ),
                       suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                            IconButton(
                              onPressed: (){}, 
                            icon: Icon(Icons.attach_file),
                            ),
                            IconButton(
                              onPressed:(){},
                             icon: Icon(Icons.camera_alt),
                             ),
                             IconButton(onPressed: (){},
                              icon: Icon(Icons.mic),
                              ),
                       ]),
                       contentPadding: EdgeInsets.all(5)
                  ),
                ),
              ),
      ),
           Padding(padding: const EdgeInsets.only(
            bottom: 8,
            right: 2,
           ),
           child: CircleAvatar(
            radius: 20,
            backgroundColor: mainColor,
            child: IconButton(icon: Icon(Icons.send),
            onPressed:(){} ,color: Colors.white,),
           ),
           ) 
          
        ],);
      
  
  }
}
 
   
 