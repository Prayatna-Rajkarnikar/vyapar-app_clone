import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideshowScreen extends StatefulWidget {
  const SlideshowScreen({super.key});

  @override
  State<SlideshowScreen> createState() => _SlideshowScreenState();
}

class _SlideshowScreenState extends State<SlideshowScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("assets/images/slider1.jpg")],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("assets/images/slider2.jpg")],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("assets/images/slider3.jpg")],
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    activeDotColor: Colors.redAccent[700]!,
                    dotColor: Colors.grey.shade300,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'signup');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent[700],
                    ),
                    child: const Text(
                      "Use Vyapar For Free",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
