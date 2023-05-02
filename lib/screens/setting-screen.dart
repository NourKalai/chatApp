import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings", style: TextStyle(fontSize: 22)),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.lightGreen,
                  ),
                  SizedBox(width: 10),
                  Text("Account",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ],
              ),
              Divider(height: 20,thickness: 1),
              SizedBox(height: 10),
              buildAccountOption(context,"Change Password"),
              buildAccountOption(context,"Content Settings"),
              buildAccountOption(context,"Social"),
              buildAccountOption(context,"Language"),
              buildAccountOption(context,"Privacy and Security"),
            ],
          ),
        ),
        );
  }
    GestureDetector buildAccountOption(BuildContext context, String title) {
      return GestureDetector(
        onTap:(){

        },
        child:Padding(
          padding:const EdgeInsets.symmetric(vertical:8, horizontal: 20 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style:TextStyle(

              ))
            ],
          ), 
          ) ,
      );
    }
  }

