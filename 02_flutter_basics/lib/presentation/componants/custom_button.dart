import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  const CustomButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Ink(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.yellow, Colors.green])),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.red,
        customBorder: const CircleBorder(),
        child: Center(
          child: Icon(icon),
        ),
      ),
    ));
  }
}

class CustomButtonGester extends StatelessWidget {
  final Function() onTap;
  final String text;
  const CustomButtonGester(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.orange, Colors.lightBlue])),
                child: Center(child: Text(text),),
      ),
    );
  }
}
