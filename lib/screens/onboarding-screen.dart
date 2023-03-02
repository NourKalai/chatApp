import 'package:flutter/material.dart';

import '../widgets/animated-indicator.dart';
import '../widgets/slide.dart';

const KTitleStyle = TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 136, 198, 138),
    fontWeight: FontWeight.bold);
const KSubtitleStyle =
    TextStyle(fontSize: 22, color: Color.fromARGB(255, 136, 198, 138));

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = new PageController(initialPage: 0);
  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: PageView(
            controller: pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Slide(
                  index: 1,
                  hero: Image.asset("assets/images/eco bag.png"),
                  title: "ZERO PLASTIC",
                  subtitle:
                      " Say no to plastic, switch to tote bags! Join our CSR challenge on the app",
                  onNext: nextPage),
              Slide(
                index: 2,
                hero: Image.asset("assets/images/recycle.png"),
                title: "RECYCLE",
                subtitle:
                    " Join us for an eco-adventure with recycling-centric CSR challenges.",
                onNext: nextPage,
              ),
              Slide(
                  index: 3,
                  hero: Image.asset("assets/images/clean earth.png"),
                  title: "CLEAN EARTH",
                  subtitle:
                      " Share ideas and actions for a cleaner, more sustainable future.",
                  onNext: nextPage),
            ],
          ),
        ),
      ),
    );
  }
}

class slide extends StatelessWidget {
  final Widget hero;
  final String title, subtitle;
  final VoidCallback onNext;
  final int index;

  const slide(
      {super.key,
      required this.index,
      required this.hero,
      required this.title,
      required this.subtitle,
      required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(child: hero),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(title, style: KTitleStyle),
                SizedBox(height: 20),
                Text(subtitle,
                    style: KSubtitleStyle, textAlign: TextAlign.center),
                SizedBox(height: 35),
                ProgressButton(onNext: onNext),
              ],
            ),
          ),
          GestureDetector(
              onTap: onNext, child: Text('skip', style: KSubtitleStyle)),
          SizedBox(
            height: 4,
          )
        ],
      ),
    );
  }
}

class ProgressButton extends StatelessWidget {
  final VoidCallback onNext;
  const ProgressButton({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 75,
      child: Stack(
        children: [
          AnimatedIndicator(
              duration: const Duration(seconds: 4), size: 75, callback: onNext),
          Center(
              child: GestureDetector(
            child: Container(
              height: 60,
              width: 60,
              child: Image.asset("assets/images/arrow.jpg", width: 10),
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(99)),
            ),
          )),
        ],
      ),
    );
  }
}
