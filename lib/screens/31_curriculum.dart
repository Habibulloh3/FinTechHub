import 'package:flutter/material.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cirriculum",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: ListView.separated(
              itemCount: 20,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListTile(
                    trailing: IconButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )),
                    title: const Text(
                      "Why Using Graphic De...",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "10 Mins",
                      style: TextStyle(fontSize: 15),
                    ),
                    leading: const CircleAvatar(
                      radius: 30,
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Divider(),
                );
              },
            )),
      ),
      bottomNavigationBar: SizedBox(
          height: 70,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.only(left: 40,right: 10), backgroundColor: Colors.blue),
              onPressed: () {},
              child: Row(
                children: [
                  const Text(
                    "Enroll Course - \$55",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),Spacer(),
                  ClipRRect(borderRadius: BorderRadius.circular(50),
                    child: IconButton( style:  ElevatedButton.styleFrom(backgroundColor: Colors.white,),
                        onPressed: () {}, icon:const Icon( Icons.arrow_right_alt_rounded,color: Colors.blue,size: 35,)),
                  ),
                ],
              ))),
    );
  }
}
