import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playandpizza/utils/color.dart';

class PizzaWidget extends StatelessWidget {
  final String pizzaImage;
  final String pizzaName;

  const PizzaWidget({
    super.key,
    required this.pizzaImage,
    required this.pizzaName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: 150,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: pizzaWidgetBackgroud),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            pizzaImage,
            width: 140,
            height: 140,
          ),
          Text(
            pizzaName,
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
