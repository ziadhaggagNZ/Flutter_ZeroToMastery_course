import 'package:advicer/3_application/core/services/themes_services.dart';
import 'package:advicer/3_application/pages/advice/cubit/advicer_cubit.dart';
import 'package:advicer/3_application/pages/advice/widgets/advice_field.dart';
import 'package:advicer/3_application/pages/advice/widgets/custom_button.dart';
import 'package:advicer/3_application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AdvicerPageWrapperProvider extends StatelessWidget {
  const AdvicerPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdvicerCubit(),//AdvicerBloc(),
      child: const AdvicePage(),
    );
  }
}

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
                child: Center(child: BlocBuilder<AdvicerCubit, AdvicerCubtState>(
              builder: (context, state) {
                if (state is AdvicerInitial) {
                  return Text(
                    "your Advice is waiting for you!",
                    style: themeData.textTheme.displayLarge,
                  );
                } else if (state is AdvicerStateLooding) {
                  return CircularProgressIndicator(
                    color: themeData.colorScheme.secondary,
                  );
                } else if (state is AdvicerStateLooded) {
                  return AdviceField(advice: state.advice);
                } else if (state is AdvicerStateError) {
                  return const ErrorMessage(
                      Message: "uups something gone wrong!");
                } else {
                  return const SizedBox();
                }
              },
            ))),
            const SizedBox(height: 200, child: Center(child: CustomButton())),
          ],
        ),
      ),
    );
  }
}
