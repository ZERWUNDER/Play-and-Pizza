import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playandpizza/utils/color.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        backgroundColor: backgroundColor,
        scrolledUnderElevation: 0,
        title: Container(
          margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
          child: Text(
            'Halo, Pengguna!',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Redirect Ke Top UP
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
              width: 90,
              height: 45,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '837',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: backgroundColor),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: Image.asset(
                      'assets/coin.png',
                      width: 32,
                      height: 32,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
