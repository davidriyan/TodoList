import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/button_register_item.dart';
import '../widgets/form_register_item.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  double lingkaran(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  final _formState = GlobalKey<FormState>();
  final textcontroller = TextEditingController();
  String fullname = 'David';
  String email = 'David@gmail.com';
  String password = '12345';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(242, 255, 255, 255),
      body: Stack(
        children: [
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
          ListView(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome Onboard!',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 14),
                      Text(
                        'Let’s help you meet up your tasks',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 49),
                      //membuat form register
                      formRegisterItem(
                          email: email,
                          formState: _formState,
                          password: password),
                      //membuat button register
                      buttonRegisterItem(formState: _formState)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
