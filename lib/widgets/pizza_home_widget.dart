import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playandpizza/utils/color.dart';

class PizzaHomeWidget extends StatelessWidget {
  final String pizzaImage;
  final String pizzaName;

  const PizzaHomeWidget({
    super.key,
    required this.pizzaImage,
    required this.pizzaName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12, bottom: 20),
      width: 150,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: pizzaWidgetBackgroud,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              pizzaImage,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8, bottom: 4),
            child: Text(
              pizzaName,
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
