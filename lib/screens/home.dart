import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playandpizza/utils/color.dart';
import 'package:playandpizza/widgets/games_widget.dart';
import 'package:playandpizza/widgets/pizza_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: backgroundColor,
        title: Container(
          margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
          child: Image.asset(
            'assets/Logo_PP_Light.png',
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
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Halo, Pengguna!',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Mau memainkan\npermainan apa hari ini?',
                style: GoogleFonts.poppins(
                    fontSize: 22, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GamesWidget(
                    gameImage: '',
                    gameName: 'Minigame 1',
                    gamePrice: '100 coins',
                  ),
                  GamesWidget(
                    gameImage: '',
                    gameName: 'Minigame 2',
                    gamePrice: '100 coins',
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GamesWidget(
                    gameImage: '',
                    gameName: 'Minigame 3',
                    gamePrice: '100 coins',
                  ),
                  GamesWidget(
                    gameImage: '',
                    gameName: 'Minigame 4',
                    gamePrice: '100 coins',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tukar tiket dengan pizza',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Selengkapnya',
                    style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w500,
                        color: primaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PizzaWidget(
                      pizzaImage: 'assets/peperoni.png',
                      pizzaName: 'Peperoni',
                    ),
                    PizzaWidget(
                      pizzaImage: 'assets/peperoni.png',
                      pizzaName: 'Peperoni',
                    ),
                    PizzaWidget(
                      pizzaImage: 'assets/peperoni.png',
                      pizzaName: 'Peperoni',
                    ),
                    PizzaWidget(
                      pizzaImage: 'assets/peperoni.png',
                      pizzaName: 'Peperoni',
                    ),
                    PizzaWidget(
                      pizzaImage: 'assets/peperoni.png',
                      pizzaName: 'Peperoni',
                    ),
                    PizzaWidget(
                      pizzaImage: 'assets/peperoni.png',
                      pizzaName: 'Peperoni',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
