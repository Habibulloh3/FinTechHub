import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/categories.dart';

class ReviewsScreen extends StatelessWidget {
  ReviewsScreen({super.key});
  final List<String> retings = [
    'Excellent',
    'Good',
    'Average',
    'Below Average',
  ];
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
      body: Center(
        child: Column(
          children: [
            const Text(
              "4.8",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StarWidget(),
                StarWidget(),
                StarWidget(),
                StarWidget(),
                StarWidget(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Based on 448 Reviews",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                height: 35,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoriesBotton(title: retings[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: retings.length,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(  padding: EdgeInsets.symmetric(horizontal: 35),
                child: Container(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.white,boxShadow:[  BoxShadow(
        color: Colors.black.withOpacity(0.2), 
        offset: Offset(4, 4), 
        blurRadius: 8,  
        spreadRadius: 2,  
      ),] ),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.black,
                              ),
                              title: Row(
                                children: [
                                  Text(
                                    "Heather S. McMullen",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 3),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blue, width: 2),
                                          color: const Color.fromARGB(
                                              255, 186, 210, 229),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.yellow),
                                          Text("4.0")
                                        ],
                                      ))
                                ],
                              ),
                              subtitle: Text(
                                  "The Course is Very Good dolor sit amet, con sect tur adipiscing elit. Naturales divitias dixit parab les esse.."),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.favorite_outline),SizedBox(width: 10,), Text("404",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),SizedBox(width: 50,),Text("2 Weeks Agos",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
