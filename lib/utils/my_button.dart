import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTapped;
  const MyButton({super.key,required this.text,required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapped,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
      ),
      child: Text(text),
    );
  }
}