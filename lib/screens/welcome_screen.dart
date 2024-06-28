import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: PageController(),
            children: [
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
            ],
          ), //dot indicator
          Container(
              alignment: const Alignment(0, 0.75),
              child: SmoothPageIndicator(controller: _controller, count: 3)),
          Container(
            alignment: Alignment(0.9, 0.9),
            child: ElevatedButton(onPressed: () {}, child: Text('Next')),
          )
        ],
      ),
    );
  }
}
