import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playandpizza/utils/color.dart';
import 'package:playandpizza/widgets/pizza_widget.dart';

class PizzaScreen extends StatefulWidget {
  const PizzaScreen({super.key});

  @override
  State<PizzaScreen> createState() => _PizzaScreenState();
}

class _PizzaScreenState extends State<PizzaScreen> {
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
          child: Image.asset(
            'assets/Logo_PNP_Light.png',
            width: 100,
            height: 100,
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              PizzaWidget(
                pizzaImage: 'assets/peperoni.png',
                pizzaName: 'Peperoni',
                pizzaPrice: '100 tiket',
              ),
              PizzaWidget(
                pizzaImage: 'assets/cheese_onions.png',
                pizzaName: 'Keju & Bawang',
                pizzaPrice: '100 tiket',
              ),
              PizzaWidget(
                pizzaImage: 'assets/mushroom.png',
                pizzaName: 'Jamur',
                pizzaPrice: '100 tiket',
              ),
              PizzaWidget(
                pizzaImage: 'assets/cheese_tomatoes.png',
                pizzaName: 'Keju & Tomat',
                pizzaPrice: '100 tiket',
              ),
              PizzaWidget(
                pizzaImage: 'assets/double_cheese.png',
                pizzaName: 'Keju Mozarella',
                pizzaPrice: '100 tiket',
              ),
              PizzaWidget(
                pizzaImage: 'assets/nuggets.png',
                pizzaName: 'Nuget Ayam',
                pizzaPrice: '100 tiket',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
