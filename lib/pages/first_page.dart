import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_todo_app/pages/register_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  // membuat ukuran diameter pada buble warna tosca
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(242, 255, 255, 255),
      body: Stack(
        children: [
          Positioned(
            left: -getSmallDiameter(context) / 2,
            top: -getSmallDiameter(context) / 7,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140),
                color: Color.fromARGB(115, 155, 39, 176),
              ),
            ),
          ),
          Positioned(
            left: -getSmallDiameter(context) / 9,
            top: -getSmallDiameter(context) / 2,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140),
                color: Color.fromARGB(115, 155, 39, 176),
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: LottieBuilder.asset(
                      'assets/lotties/register.json',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Gets things done with TODO',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(179, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(
                  width: 281,
                  height: 72,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum dictum tempus, interdum at dignissim metus. Ultricies sed nunc.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              height: 62,
              width: 325,
              decoration: BoxDecoration(
                  color: Color.fromARGB(229, 155, 39, 176),
                  borderRadius: BorderRadius.circular(20)),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return RegisterPage();
                      },
                    ));
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
