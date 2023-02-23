import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class formRegisterItem extends StatelessWidget {
  formRegisterItem({
    super.key,
    required GlobalKey<FormState> formState,
    required this.password,
    required this.email,
  }) : _formState = formState;

  final GlobalKey<FormState> _formState;
  final String password;
  final String email;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: _formState,
          child: Column(
            children: [
              //textfromfield yang pertama
              SizedBox(
                width: 325,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == '') {
                      return 'Isi nama terlebih dahulu!';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your full name',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: const Color.fromARGB(164, 0, 0, 0)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(22)),
                  ),
                ),
              ),
              const SizedBox(height: 21),
              //textformfield yang kedua
              SizedBox(
                width: 325,
                child: TextFormField(
                  validator: (value) {
                    if (value == '') {
                      return 'Isi email terlebih dahulu!';
                    } else if (value != email) {
                      return 'Email yang anda masukkan salah';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: const Color.fromARGB(164, 0, 0, 0)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(22)),
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              //textformfield yang ketiga
              SizedBox(
                width: 325,
                child: TextFormField(
                  validator: (value) {
                    if (value == '') {
                      return 'Isi password terlebih dahulu!';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: const Color.fromARGB(164, 0, 0, 0)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(22)),
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              //textformfield ke empat
              SizedBox(
                width: 325,
                child: TextFormField(
                  validator: (value) {
                    if (value == '') {
                      return 'Isi password terlebih dahulu!';
                    } else if (value != password) {
                      return 'Password yang anda masukkan salah';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: const Color.fromARGB(164, 0, 0, 0)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(22)),
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              )
            ],
          )),
    );
  }
}
