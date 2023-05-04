
import 'package:chatapp/const/constant.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  final String username,profilePic;
  const ProfilScreen({super.key, required this.username, required this.profilePic});

  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;
   double height = MediaQuery.of(context).size.height;   
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFC5E1A5),
                      const Color(0Xffaed581),
                      const Color(0xFF8BC34A),
                      const Color(0xBF2E7D32),
                    ],
              begin: FractionalOffset.bottomCenter,
              end:Alignment.topCenter,
      ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
        body:SingleChildScrollView(
            physics: BouncingScrollPhysics(),
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical:73),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                 children:[ 
               const Icon(
                  Icons.arrow_left,
                color:Colors.white,
               ),
               const Icon(
                Icons.logout_rounded,
                color:Colors.white,
               ),
                 ]),
                 const SizedBox(
                  height:20
                 ),
                 const Text( 'My\nProfil',textAlign: TextAlign.center,
                 style: TextStyle(color: Colors.white,
                 fontSize: 34,
                 fontFamily:'Nisebuschgardens',
                 ),
                 ),
                 SizedBox(
                  height:22,
                 ),
                 Container(
                  height: height*0.43,
                  child: LayoutBuilder(builder: (Context,Constraints) {
                    double innerHeight = Constraints.maxHeight;
                    double innerWidth = Constraints.maxWidth;
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                         Positioned(
                          bottom:0,
                          left:0,
                          right: 0,
                          child: Container(
                          height:innerHeight *0.72,
                          width: innerWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                           color:Colors.white,
                          ),
                          child:Column(
                            children: [
                              SizedBox(height: 80,),
                              Text(username,style: TextStyle(
                              color: Color(0xFF8BC34A),
                                fontSize: 37,
                                fontFamily:'Nunito',
                              ),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Column(
                                    children: [
                                      Text('Challanges',style:TextStyle(color:Colors.grey[500],
                                      fontFamily:'Nunito',
                                      fontSize: 25,
                                      ),
                                      ),
                                      Text('10', style:TextStyle(
                                        color: Color(0xFF8BC34A),
                                        fontFamily: 'Nunito',
                                        fontSize: 25,
                                        ),)
                                    ]),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 8),
                                      child: Container(
                                        height:30,
                                        width:3,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color:Colors.grey
                                        )
                                      ),
                                    ),
                                    Column(
                                    children: [
                                      Text('Following',style:TextStyle(color:Colors.grey[500],
                                      fontFamily:'Nunito',
                                      fontSize: 25,
                                      ),
                                      ),
                                      Text('80', style:TextStyle(
                                        color: Color(0xFF8BC34A),
                                        fontFamily: 'Nunito',
                                        fontSize: 25,
                                        ),)
                                    ]),
                                     Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 30,
                                        width:3,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color:Colors.grey
                                        )
                                      ),
                                    ),
                                      Column(
                                    children: [
                                      Text('Followers',style:TextStyle(color:Colors.grey[500],
                                      fontFamily:'Nunito',
                                      fontSize: 21,
                                      ),
                                      ),
                                      Text('95', style:TextStyle(
                                        color: Color(0xFF8BC34A),
                                        fontFamily: 'Nunito',
                                        fontSize: 21,
                                        ),)
                                    ]),

                             ] ),

                            ],
                          )
                         ),
                         ),
                        //  Positioned(
                        //   top: 110,
                        //   right: 20,
                        //   child: Icon(Icons.settings,
                        //   color: Colors.grey[700],
                        //   size: 30,
                        //   )
                        //  ),
                         Positioned(
                         
                          top: 10,
                          left:0,
                          right: 0,
                          child:Center(
                            child: Container(
                            decoration: BoxDecoration(borderRadius:BorderRadius.circular(40)),
                             child: Image.asset(profilePic,
                             width: 150,
                             fit:BoxFit.fitHeight)
                              ),
                            ),
                          )

                      ],
                    );
                  
                  },
                  ),
                 ),
                 SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width:width,
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: mainColor,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(100, 40), //////// HERE
                              ),
                              onPressed: () {},
                              child: Text('Add'),
                            ),
                            SizedBox(width: 10,),
                             ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: mainColor,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(100, 40), //////// HERE
                              ),
                              onPressed: () {},
                              child: Text('Delete'),
                            ),
                      ],
                    ),
                  ),
                 SizedBox(height: 30,),
                 Container(height:height*0.5,
                  width:width ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text('My Challanges',
                        style: TextStyle(color:  Color(0xFF8BC34A),
                        fontSize: 25,
                        fontFamily: 'Nunito',
                        ),),
                        Divider(
                          thickness: 2.5,
                        ),
                        SizedBox(height: 10 ),
                        Container(
                          height:50,
                          width: width,
                          decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text('hhhhhhhhhhhhhhhh'),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height:50,
                          width: width,
                          decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(30)
                            
                          ),
                          child: Text('fffffggggddddddsgggggggggggggggggggggggggggggggg'),
                        ),
                      ],
                    ),
                  ),
                  )

       ] ),),)
        )
      ],
    );
  }
}

