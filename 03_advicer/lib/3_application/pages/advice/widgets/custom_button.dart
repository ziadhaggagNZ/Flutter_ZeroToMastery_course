import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkResponse(
      onTap: () {
        print("button tapped");
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            color: themeData.colorScheme.secondary,
          ),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Text("Get Advice" , style: themeData.textTheme.displayLarge,),
                  ),
        ),
      ),
    );
  }
}
