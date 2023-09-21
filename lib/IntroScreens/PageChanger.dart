import 'package:dev_vantra/IntroScreens/Page1.dart';
import 'package:dev_vantra/IntroScreens/Page2.dart';
import 'package:dev_vantra/IntroScreens/Page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPage extends StatefulWidget {
  const SmoothPage({super.key});

  @override
  State<SmoothPage> createState() => _SmoothPageState();
}

class _SmoothPageState extends State<SmoothPage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            
            Container(
              
              alignment: Alignment.topCenter,
             child: SmoothPageIndicator(
                effect:ExpandingDotsEffect(
                  activeDotColor:Colors.green ,
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Colors.lightGreen),
                  controller: _controller,
                  count: 3,
               
              ),
            ),
         Expanded(
                    child: PageView(
                      controller: _controller,
                      children: [
                        Page1(),
                        Page2(),
                        Page3(),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}