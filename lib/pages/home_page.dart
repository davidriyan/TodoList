import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  double lingkaran(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 307,
                      color: Color.fromARGB(55, 155, 39, 176),
                    ),
                    Positioned(
                      left: -lingkaran(context) / 2,
                      top: -lingkaran(context) / 7,
                      child: Container(
                        width: lingkaran(context),
                        height: lingkaran(context),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(140),
                          color: Color.fromARGB(115, 155, 39, 176),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -lingkaran(context) / 9,
                      top: -lingkaran(context) / 2,
                      child: Container(
                        width: lingkaran(context),
                        height: lingkaran(context),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(140),
                          color: Color.fromARGB(115, 155, 39, 176),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 9,
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.purple),
                              ),
                              Container(
                                height: 105,
                                width: 105,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://static.wikia.nocookie.net/naruto/images/2/21/Sasuke_Part_1.png/revision/latest?cb=20170621055519&path-prefix=id'),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Welcome, David Riyan Kurniawan',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0, top: 10),
                      child: Text(
                        'Tasks List',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
