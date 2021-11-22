import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/kd_controller.dart';

class KdView extends GetView<KdController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(41, 168, 245, 1),
        title: Text(
          "KI, KD & IPK",
          style: GoogleFonts.oswald(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: ListView(
            children: [
              Text(
                "KI:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1.	Memahami dan menerapkan pengetahuan faktual, konseptual, prosedural, dan metakognitif pada tingkat teknis dan spesifik sederhana berdasarkan rasa ingin tahunya tentang ilmu pengetahuan,teknologi, seni, budaya dengan wawasan kemanusiaan, kebangsaan, dan kenegaraan terkait fenomena dan kejadian tampak mata. \n\n2.	Menunjukkan keterampilan menalar, mengolah, dan menyaji secara kreatif, produktif, kritis, mandiri, kolaboratif, dan komunikatif, dalam ranah konkret dan ranah abstrak sesuai dengan yang dipelajari di sekolah dan sumber lain yang sama dalam sudut pandang teori.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "KD:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Menjelaskan sistem persamaan linear dua variabel dan penyelesaiannya yang dihubungkan dengan masalah kontekstual.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "IPK:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1.	Mendefinisikan persamaan linear dua variabel\n2.	Menjelaskan model dan sistem persamaan linear dua variabel\n3.	Menyajikan selesaian persamaan linier dua variabel ke dalam bentuk tabel, diagram perpaduan, dan koordinat cartesius\n4.	Menentukan nilai variabel persamaan linear dua variabel dalam kehidupan sehari-hari",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
