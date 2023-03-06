// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:chatapp/widgets/chat-feed.dart';
import 'package:chatapp/widgets/story-feed.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom-navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

 @override
  void initState() {

    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {

    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
        appBar: AppBar(
        backgroundColor:  const Color(0xFF8BC34A),
        leadingWidth: 30,
        title: const Text(
            " Messages",
            style: TextStyle(color: Colors.white )),
        elevation: 0.0,
        actions: [
          IconButton(
            icon:const Icon(Icons.add_a_photo,
            color:  Colors.white,
            size: 30,), 
            onPressed: () {}, 
          ),
          IconButton(
            icon:const Icon(Icons.add,
            color:  Colors.white,
            size: 30,), 
            onPressed: (){} ,
          ),
        ],
        ),
        body:  
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                 boxShadow: [
                 BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset:const Offset(0, 3),
                ),
              ],
                ),
                 child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    width:300,
                    child: Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText:"Search" ,
                          border: InputBorder.none,
                          ),
                          ),
                      ),
                  ),
                  const Icon(Icons.search,
                  color: Color(0xFF8BC34A),),  
                ],   
               ),
              ),
            ),
             Container(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                   StoryScreen(),
           ] ),
             ),
              ChatScreen(),
              //bottom navigator bar
             
              ], ),
              floatingActionButton: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: BottomNavigation(tabController: _tabController),
              ),   
    );
  }

  }




