import 'package:flutter/material.dart';
import '../screens/login-screen.dart';
import '../screens/onboarding-screen.dart';

class Slide extends StatefulWidget {
  final Widget hero;
  final String title, subtitle;
  final VoidCallback onNext;
  final int index;

  Slide(
      {super.key,
      required this.index,
      required this.hero,
      required this.title,
      required this.subtitle,
      required this.onNext});
  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(child: widget.hero),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(widget.title, style: KTitleStyle),
                SizedBox(height: 20),
                Text(widget.subtitle,
                    style: KSubtitleStyle, textAlign: TextAlign.center),
                SizedBox(height: 35),
                // Container(
                //   height: 60,
                //   color: Color.fromARGB(255, 167, 245, 31),
                // )

                ProgressButton(onNext: widget.onNext),
              ],
            ),
          ),
          InkWell(
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                  ;
                },
                child: Text('skip', style: KSubtitleStyle)),
          )
        ],
      ),
    );
  }
}
