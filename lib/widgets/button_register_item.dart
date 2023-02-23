import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_todo_app/pages/signin_page.dart';

class buttonRegisterItem extends StatelessWidget {
  const buttonRegisterItem({
    super.key,
    required GlobalKey<FormState> formState,
  }) : _formState = formState;

  final GlobalKey<FormState> _formState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                if (_formState.currentState!.validate()) {}
              },
              child: Center(
                child: Text(
                  'Register',
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
                'Already have an account ?',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SigninPage();
                    },
                  ));
                },
                child: Text(
                  ' Sign In',
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
    );
  }
}
