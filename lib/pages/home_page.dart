import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double lingkaran(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  bool checkbox = false;

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
                    //membuat fitur foto profile
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
                          //membuat fitur text welcome (nama user)
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
                    )),
                SizedBox(height: 20),
                Material(
                  borderRadius: BorderRadius.circular(24),
                  elevation: 25,
                  child: Container(
                    width: 323,
                    height: 248,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 26, horizontal: 21),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Tasks List',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black54),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {},
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        'assets/images/iconadd.png'),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 24.0, left: 6),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: Checkbox(
                                      activeColor: Colors.purple,
                                      value: checkbox,
                                      onChanged: (value) {
                                        setState(() {
                                          checkbox = !checkbox;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 11.0),
                                    child: Text(
                                      'Cook Rice and Chicken at 10 am',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color.fromARGB(190, 0, 0, 0)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 6),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: Checkbox(
                                      activeColor: Colors.purple,
                                      value: checkbox,
                                      onChanged: (value) {
                                        setState(() {
                                          checkbox = !checkbox;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 11.0),
                                    child: Text(
                                      'Cook Rice and Chicken at 10 am',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color.fromARGB(190, 0, 0, 0)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 6),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: Checkbox(
                                      activeColor: Colors.purple,
                                      value: checkbox,
                                      onChanged: (value) {
                                        setState(() {
                                          checkbox = !checkbox;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 11.0),
                                    child: Text(
                                      'Cook Rice and Chicken at 10 am',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color.fromARGB(190, 0, 0, 0)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 6),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: Checkbox(
                                      activeColor: Colors.purple,
                                      value: checkbox,
                                      onChanged: (value) {
                                        setState(() {
                                          checkbox = !checkbox;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 11.0),
                                    child: Text(
                                      'Cook Rice and Chicken at 10 am',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color.fromARGB(190, 0, 0, 0)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 6),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: Checkbox(
                                      activeColor: Colors.purple,
                                      value: checkbox,
                                      onChanged: (value) {
                                        setState(() {
                                          checkbox = !checkbox;
                                        });
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 11.0),
                                    child: Text(
                                      'Cook Rice and Chicken at 10 am',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color.fromARGB(190, 0, 0, 0)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
