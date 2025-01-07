import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/categories.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Methods",
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
                      Text("Setup your Graphic D",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Select the Payment Methods you Want to Use ",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            RadioWidget(
              title: 'Paypal',
            ),
            SizedBox(
              height: 12,
            ),
            RadioWidget(
              title: 'Google Pay',
            ),
            SizedBox(
              height: 12,
            ),
            RadioWidget(
              title: 'Apple Pay',
            ),
            SizedBox(
              height: 12,
            ),
            RadioWidget(
              title: '**** ****  **76  3054',
            ),SizedBox(height: 50,), SizedBox(height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(padding:const EdgeInsets.only(left: 40,right: 10), backgroundColor: Colors.blue),
                onPressed: () {},
                child: Row(
                  children: [
                    const Text(
                      "Enroll Course - \$55",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),const Spacer(),
                    ClipRRect(borderRadius: BorderRadius.circular(50),
                      child: IconButton( style:  ElevatedButton.styleFrom(backgroundColor: Colors.white,),
                          onPressed: () {}, icon:const Icon( Icons.arrow_right_alt_rounded,color: Colors.blue,size: 35,)),
                    ),
                  ],
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
