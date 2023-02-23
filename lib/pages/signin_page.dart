import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:slicing_todo_app/pages/register_page.dart';

class SigninPage extends StatefulWidget {
  SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  double lingkaran(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  final _formState = GlobalKey<FormState>();

  final textcontroller = TextEditingController();

  bool _onclick = true;

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
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 259,
                  height: 206,
                  child: LottieBuilder.asset(
                    'assets/lotties/login.json',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Form(
                    key: _formState,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 325,
                          child: TextFormField(
                            validator: (value) {
                              if (value == '') {
                                return 'Masukkan email terlebih dahulu!';
                              }
                            },
                            controller: textcontroller,
                            decoration: InputDecoration(
                                hintText: 'Enter your email',
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(22))),
                          ),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        SizedBox(
                          width: 325,
                          child: TextFormField(
                            obscureText: _onclick,
                            validator: (value) {
                              if (value == '') {
                                return 'Masukkan password terlebih dahulu!';
                              }
                            },
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _onclick = !_onclick;
                                      });
                                    },
                                    icon: Icon(_onclick
                                        ? Icons.visibility_off
                                        : Icons.visibility)),
                                hintText: 'Enter password',
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(22))),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 325,
                          height: 62,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(229, 155, 39, 176),
                              borderRadius: BorderRadius.circular(20)),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: () {
                                _formState.currentState!.validate();
                              },
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don’t have an account ? ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return RegisterPage();
                                    },
                                  ));
                                },
                                child: Text(
                                  'Sign Up',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color.fromARGB(229, 155, 39, 176),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
