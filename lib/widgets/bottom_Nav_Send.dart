import 'dart:io';
import 'package:chatapp/const/constant.dart';
import 'package:chatapp/model/chatModel.dart';
import 'package:chatapp/model/messageModel.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart';


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 55,
          child: Card(
            margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              minLines: 1,
            
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type a message",
                  suffixIcon: Row(mainAxisSize: MainAxisSize.min, children: [
                    IconButton(
                        icon: Icon(Icons.image_outlined),
                        iconSize: 25.0,
                        color: Color.fromARGB(225, 140, 185, 4),
                        onPressed: () {
                          pickImage(ImageSource.gallery);
                        }
                        // pickImage(),
                        ),
                    IconButton(
                      icon: Icon(Icons.camera_alt_outlined),
                      iconSize: 25.0,
                      color: Color.fromARGB(225, 140, 185, 4),
                      onPressed: () {
                        
                        pickImage(ImageSource.camera);
                      },
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mic),
                      iconSize: 25.0,
                      color: Color.fromARGB(225, 140, 185, 4),
                    ),
                  ]),
                  contentPadding: EdgeInsets.all(5)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
            right: 2,
          ),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: mainColor,
            child: IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
  
  void pickImage(ImageSource camera) {
  }

