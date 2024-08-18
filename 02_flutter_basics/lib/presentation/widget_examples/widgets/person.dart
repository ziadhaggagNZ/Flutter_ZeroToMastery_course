import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String pictureUrl;
  final String name;
  final String age;
  final String country;
  final String job;
  const Person(
      {super.key,
      required this.pictureUrl,
      required this.name,
      required this.age,
      required this.country,
      required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(pictureUrl))
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white54),
              child: Text(name,style: Theme.of(context).textTheme.titleLarge,))
          ],),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _createPersonInfoRow(key: "age", value: age, context: context),
                _createPersonInfoRow(key: "job", value: job, context: context),
                _createPersonInfoRow(key: "country", value: country, context: context),
                  
              ],
            ),
          ),

        ],
      ),
    );
  }

  Row _createPersonInfoRow({required String key , required String value , required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
               Flexible(child: Text(key)),
              const Spacer(),
              Expanded(child: Text(value , style: Theme.of(context).textTheme.titleLarge,))
            ],);
  }
}
