import 'package:flutter/material.dart';
import 'package:flutter_application_3/appcolor.dart';import 'package:flutter_application_3/appcolor.dart';
import 'package:flutter_application_3/loginpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});
  @override
  _PageviewState createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  void _onNext() {
    if (currentIndex < 2) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Loginpage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Skip',
                style: TextStyle(fontSize: 18),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Loginpage(),
                ),
              );
            },
          ),
        ],
        leading: const Text(''),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: const [
                OnboardingPage(
                  title: 'Online Learning',
                  description:
                      'We Provide Classes Online Classes and Pre Recorded Leactures.!',
                ),
                OnboardingPage(
                  title: 'Learn from Anytime',
                  description: 'Booked or Save the Lectures for Future.',
                ),
                OnboardingPage(
                  title: 'Get Online Certificate',
                  description: 'Analyse your scores and Track your results',
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              spacing: 16,
              activeDotColor: Colors.blue,
              dotColor: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0, left: 400.0),
            child: FloatingActionButton(
              backgroundColor: Appcolor.buttonbackcolor,
              onPressed: _onNext,
              child: const CircleAvatar(
                backgroundColor: Appcolor.buttonbackcolor,
                child: Icon(
                  Icons.arrow_forward,
                  color: Appcolor.textbackcolor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;

  const OnboardingPage(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Icon(Icons.book_online, size: 100, color: Colors.blue),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
