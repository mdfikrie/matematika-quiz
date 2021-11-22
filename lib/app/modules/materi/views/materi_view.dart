import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/materi_controller.dart';

class MateriView extends GetView<MateriController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(64, 48, 59, 1),
        title: Text(
          "Materi",
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
                "Sistem Persamaan Linier Dua Variabel  (SPLDV)",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sistem persamaan linear Dua Variabel (SPLDV) adalah dua buah persamaan linier dua variabel yang mempunyai satu. Bentuk umumnya adalah sebagai berikut:",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 140,
                child: Image(
                  image: AssetImage("assets/images/pict-1.jpg"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sistem persamaan linear Dua Variabel dapat diselesaikan dengan menggunakan metode grafik, substitusi, eliminasi dan gabungan eleminasidan substitusi.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1) Metode Grafik",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Langkah-langkah menyelesaikan dengan metode grafik yaitu:",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                "•	Menggbar garis yang mewakili kedua persamaan dalam bidang kartesius.\n•	Menemukan titik potong dari kedua grafik tersebut. \n•	Himpunan Penyelesaiannya adalah (x, y).",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Contoh:\n\nTentukan himpunan penyelesaian dari Sistem Persamaan 2x+3y = 8 dan 3x+y = 5",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Penyelesaian: \n\nLangkah 1: Menggambar kedua grafik. Menentukan titik potong pada kedua sumbu x dan y dari kedua persamaan.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: Image(
                  image: AssetImage("assets/images/1.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Kemudian menggambarkan kedalam bidang koordinat Cartesius",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: Image(
                  image: AssetImage("assets/images/2.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Langkah 2: menemukan titik potong dari kedua grafik tersebut. Perhatikan grafik diatas, titik potong antara Persamaan 2x+3y = 8 dan 3x+y=5 adalah x=1 dan y=2",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: Image(
                  image: AssetImage("assets/images/3.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Langkah 3: Himpunan Penyelesaiannya adalah (x,y) Hp = {(1,2)}",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2) Metode Substitusi",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Langkah-langkah menyelesaikan dengan metode Subtitusi: \n\n• Mengubah salah satu persamaan menjadi bentuk  y = ax + b atau x = cy+d \nTRIK!! Pilih persamaan yang paling mudah untuk diubah\n• Substitusi nilai x atau y yang diperoleh pada langkah pertama ke persamaan yang lainnya.\n• Selesaikan persamaan untuk mendapatkan nilai x atau y.\n• Substitusi nilai x atau y yang diperoleh pada langkah ketiga pada salah satu persamaan untuk mendapatkan nilai dari varabel yang belum diketahui.\n• Himpunan Penyelesaiannya adalah (x, y).",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Contoh: \n\nTentukan himpunan penyelesaian dari Sistem Persamaan 2x+3y = 8 dan 3x+y=5\nPenyelesaian:\n\ndari persamaan 3x+y = 5 diperoleh y=5-3x \nkemudian subsitusikan persamaan tersebut ke persamaan 2x+3y = 8 sehingga diperoleh \n2x+3(5x-3)= 8\n2x+15-9x= 8\n2x-9x= 8-15\n-7x=-7\nx=1\n\nkemudian subsitusikan  nilai x pada persamaan 2x+3y = 8 (pilih salah satu persamaan, bebas hasilnya akan sama) \n2(1)+3y = 8=\n3y=8-2\n3y=6\ny=6/3\ny=2\njadi Hp = {(1,2)}",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3) Metode Eliminasi",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Langkah-langkah menyelesaikan dengan metode Eliminasi:\n\n•	Menyamakan salah satu koefisien dari variabel x atau y dari kedua persamaan dengan cara mengalikan konstanta yang sesuai.\n•	Hilangkan variabel yang memiliki koefisien yang sama dengan cara menambahkan atau mengurangkan kedua persamaan.\n•	Ulangi kedua langkah untuk mendapatkan varibel yang belum diketahui.\n•	Himpunan Penyelesaiannya  adalah (x, y).",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Contoh: \n\nTentukan himpunan penyelesaian dari Sistem Persamaan 2x+3y = 8 dan 3x+y=5 !!!\n\nPenyelesaian:\nmengeliminasi variabel y",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: Image(
                  image: AssetImage("assets/images/4.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "selanjutnya mengeliminasi variabel x",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: Image(
                  image: AssetImage("assets/images/5.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "jadi Hp = {(1,2)}",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "4)	Metode Gabungan Eliminasi dan Subtitusi",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Langkah-langkah menyelesaikan dengan metode Gabungan:\n\n•	Cari nilai salah satu variabel x atau y dengan metode eliminasi.\n•	 Gunakan metode substitusi untuk mendapatkan nilai variabel kedua yang belum diketahui.\n•	Penyelesaiannya adalah (x, y).",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Contoh: \n\nTentukan himpunan penyelesaian dari Sistem Persamaan 2x+3y = 8 dan 3x+y=5 !!!\n\npenyelesaian:\nmengeliminasi variabel y",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: Image(
                  image: AssetImage("assets/images/6.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "kemudian subsitusikan  nilai x pada persamaan 2x+3y = 8 (pilih salah satu persamaan, bebas hasilnya akan sama)",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "2(1)+3y = 8\n3y=8-2\n3y=6\ny=6/3\ny=2\njadi Hp = {(1,2)}",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Penerapan Sistem Persamaan Linier Dua Variabel Dalam Pemecahan Masalah",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Banyaknya permasalahan dalam kehidupan sehari hari yang disajikan dalam soal cerita dan dapat diselesaikan dengan menggunakan sistem persamaan linier dua variabel  \n\ncontoh:\nDian membeli sebuah buku tulis dan sebuah buku gambar seharga Rp. 8.000. Dilain hari Dian membeli dua buah tulis dan sebuah buku gambar dengan membayar uang sebesar Rp. 11.000 berapa harga sebuah buku tulis dan sebuah buku gambar ?\n\nPemecahan:\nUbah terlebih dahulu pemasalahan diatas kedalam model matematika \n\nMisalkan: \nHarga satu buku tulis = x \nHarga satu buku gambar = y",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                "maka, dapat ditulis sebagai berikut.\n\nx+y =8000\n2x+y=11000\n\nuntuk menentukan harga satuan dari permasalahan ini maka menentukan penyelesaian dari SPLDV tersebut menggunakan metode gabungan( dapat menggunakan metode subtitusi ataupun eliminasi  )",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: Image(
                  image: AssetImage("assets/images/7.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "selanjutnya mensubtitusikan nilai x ke persamaan x+y =8000 atau ke 2x+y=11000. \nMensubtitusikan nilai x ke persamaan x+y = 8000",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                child: Image(
                  image: AssetImage("assets/images/8.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "kemudian mengembalikan variabel ke bentuk soal\n\nHarga satu buku tulis = x=3000\nHarga satu buku gambar = y=5000\n\njadi harga satu buku tulis adalah Rp.3000 dan harga satu buku gambar adalah Rp. 5000",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
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
