import 'package:flutter/material.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Reviews",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      body:  Center(
        child: Column(
          children: [
            Text(
              "4.8",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StarWidget(),
                StarWidget(),
                StarWidget(),
                StarWidget(),
                StarWidget(),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Based on 448 Reviews",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            ),Row(children: [Container(child: Text("Excellect"),)],),
          ],
        ),
      ),
    );
  }
}

class StarWidget extends StatelessWidget {
  const StarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Colors.red, Colors.yellow],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: const Icon(
        Icons.star,
        size: 35,
        color: Colors.white,
      ),
    );
  }
}
