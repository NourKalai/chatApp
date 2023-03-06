// ignore_for_file: prefer_const_constructors

import 'package:chatapp/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(containerRadius),
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        height: MediaQuery.of(context).size.height/18,
        color: mainColor,
        child: TabBar(
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Tab(
              child: FaIcon(FontAwesomeIcons.solidCommentDots,size: 20,color: Colors.white,),
            ),
           Tab(
              child: FaIcon(FontAwesomeIcons.userPlus,size: 20,color: Colors.white,),
           ),
            Tab(
              child: FaIcon(FontAwesomeIcons.userGroup,size: 20,color: Colors.white,),
            ),
            Tab(
              child: FaIcon(FontAwesomeIcons.phoneFlip,size: 20,color: Colors.white,),
            ),
          ],
          controller: _tabController,
          ),
      ),
    );
  }
}
