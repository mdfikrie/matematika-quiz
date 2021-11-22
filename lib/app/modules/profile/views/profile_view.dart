import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 46, 102, 1),
        title: Text(
          "My Profile",
          style: GoogleFonts.oswald(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/poto.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Mohammad Rif'an",
                style: GoogleFonts.oswald(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "IG: @rifan_nadif",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "WA: 089534030033",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Email: rifannadif251198@gmail.com",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
