import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pembahasan extends StatelessWidget {
  const Pembahasan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Pembahasan",
          style: GoogleFonts.oswald(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Color.fromRGBO(1, 161, 169, 1),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Image(
                image: AssetImage("assets/images/soal-1.jpg"),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/soal-2.JPG"),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/soal-3.JPG"),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/soal-4.JPG"),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/soal-5.JPG"),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/soal-6.JPG"),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/soal-7.JPG"),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/soal-8.JPG"),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/soal-9.JPG"),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/soal-10.JPG"),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
