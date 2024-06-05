import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playandpizza/utils/color.dart';

class SettingsWidget extends StatelessWidget {
  final Icon icon;
  final String description;
  const SettingsWidget(
      {super.key, required this.icon, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        icon,
        SizedBox(
          width: 220,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 2,
                )
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_arrow_right,
            size: 36,
            color: primaryColor,
          ),
        ),
      ],
    );
  }
}
