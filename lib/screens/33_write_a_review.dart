import 'package:flutter/material.dart';

class WriteAReview extends StatefulWidget {
  const WriteAReview({super.key});

  @override
  State<WriteAReview> createState() => _WriteAReviewState();
}

class _WriteAReviewState extends State<WriteAReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "Write a Reviews",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(4, 4),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Graphic Design",
                        style: TextStyle(color: Colors.amber),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Setup your Graphic D")
                    ],
                  ),
                ],
              ),
            ),
          const  SizedBox(
              height: 20,
            ),
        const    Text(
              "Add Photo (or) Video",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),const SizedBox(height: 5,),
          
               Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(4, 4),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child:const Padding(
                  padding:  EdgeInsets.symmetric(vertical: 12),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.cloud_upload,
                            color: Colors.green,
                            size: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Click here to Upload")
                        ],
                      ),
                    ],
                  ),
                ),
              ),const SizedBox(
              height: 20,
            ),
          const  Text(
              "Write you Review",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),const SizedBox(height: 5,), Container(height: 40, decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset:const Offset(4, 4),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],), child:  TextFormField(),),const SizedBox(height: 50,),SizedBox(
          height: 70,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(padding:const EdgeInsets.only(left: 40,right: 10), backgroundColor: Colors.blue),
              onPressed: () {},
              child: Row(
                children: [
                  const Text(
                    "Submit Review",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),const Spacer(),
                  ClipRRect(borderRadius: BorderRadius.circular(50),
                    child: IconButton( style:  ElevatedButton.styleFrom(backgroundColor: Colors.white,),
                        onPressed: () {}, icon:const Icon( Icons.arrow_right_alt_rounded,color: Colors.blue,size: 35,)),
                  ),
                ],
              ))),
            
          ],
        ),
      ),
    );
  }
}
