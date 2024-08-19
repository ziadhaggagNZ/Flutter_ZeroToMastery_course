import 'package:advicer/3_application/core/services/themes_services.dart';
import 'package:advicer/3_application/pages/advice/widgets/advice_field.dart';
import 'package:advicer/3_application/pages/advice/widgets/custom_button.dart';
import 'package:advicer/3_application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Advicer",
          style: themeData.textTheme.displayLarge,
        ),
        centerTitle: true,
        actions: [
          Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Expanded(
                child: Center(
                    child:ErrorMessage(Message: "uups something gone wrong!") 
                     /*AdviceField(advice: "example advice - good day frefhinrefi ")*/
                    /*CircularProgressIndicator(
                      color: themeData.colorScheme.secondary,
                    )*/
                    /*Text(
              "your Advice is waiting for you!",
              style: themeData.textTheme.displayLarge,
            )*/
            )),
            const SizedBox(height: 200, child: Center(child: CustomButton())),
          ],
        ),
      ),
    );
  }
}
