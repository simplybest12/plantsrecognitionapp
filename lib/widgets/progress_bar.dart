import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

class LinearProgress extends StatefulWidget {
  const LinearProgress({super.key});

  @override
  State<LinearProgress> createState() => _LinearProgressState();
}

class _LinearProgressState extends State<LinearProgress> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
          children: [
            Blur(
              blur: 2,
              blurColor: Colors.black,
              child: Container(
                
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/hme2.jpg",
                    
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 200,
                child: LinearProgressIndicator(
                  color: Colors.pink,
                  backgroundColor: Colors.black,
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            )
          ],
        );
  }
}