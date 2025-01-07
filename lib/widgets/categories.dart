import 'package:flutter/material.dart';

class CategoriesBotton extends StatelessWidget {
  final String title;

  const CategoriesBotton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 135, 139, 211)),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ));
  }
}

   class MyRadioButton extends StatefulWidget {
  @override
  _MyRadioButtonState createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  int? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<int>(
          value: 1,
          groupValue: _selectedValue,
          onChanged: (int? value) {
            setState(() {
             
              if (_selectedValue == value) {
                _selectedValue = null;
              } else {
                _selectedValue = value;
              }
            });
          },
        ),
      ],
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
class RadioWidget extends StatelessWidget {
  final String title;
  const RadioWidget({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
            ),SizedBox(width: 5,),
            MyRadioButton()
          ],
        ),
      ),
    );
  }
}
