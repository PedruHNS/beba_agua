// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CardCustom extends StatelessWidget {
  final String value;
  final IconData? icons;

  const CardCustom({
    Key? key,
    this.icons,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: mediaQuery.width * 0.5,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: const TextStyle(fontSize: 24),
            ),
            Builder(builder: (context) {
              if (icons != null) {
                return Icon(
                  icons,
                  size: 30,
                );
              }
              return const SizedBox();
            })
          ],
        ),
      ),
    );
  }
}
