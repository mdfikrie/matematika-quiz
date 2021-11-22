class Question {
  late String? question;
  late int? id, answer;
  late List<String>? options;

  Question({
    this.id,
    this.question,
    this.options,
    this.answer,
  });
}

List sample_data = [
  {
    'id': 1,
    'question':
        "Persamaan penyelesaian dari sistem persamaan 2x-3y=-13 dan x+2y= 4 adalah...",
    'options': ['A. {(-2,-3)}', 'B. {(-2,3)}', 'C. {(2,-3)}', 'D. {(2,3)}'],
    'answer_index': 1,
  },
  {
    'id': 2,
    'question':
        "Himpunan penyelesaian dari sistem persamaan x+5y=13 dan2x-y=4 adalah...",
    'options': ['A. {( 2, 3)}', 'B. {(3, 2)}', 'C. {(4, 6)}', 'D. {(1, 2)}'],
    'answer_index': 1,
  },
  {
    'id': 3,
    'question': "Diketahui 3x+5y=-9 dan 5x+7y= -19 maka nilai 4x+3y adalah...",
    'options': ['A. -41', 'B. -36', 'C. -23', 'D. -12'],
    'answer_index': 2,
  },
  {
    'id': 4,
    'question':
        "Jika x dan y adalah penyelesaian dari sistem persamaan 2x+3y=3 dan 3x-y=10 maka nilai 2x-y...",
    'options': ['A. 3', 'B. 4', 'C. 5', 'D. 7'],
    'answer_index': 3,
  },
  {
    'id': 5,
    'question':
        "Jika p dan q adalah akar dari sistem persamaan 2p+3q=2 dan 4p-q=18 maka 5p-2q^2...",
    'options': ['A. 4', 'B. 12', 'C. 28', 'D. 36'],
    'answer_index': 1,
  },
  {
    'id': 6,
    'question':
        "Jumlah dua bilangan cacah adalah 27 dan selisih kedua bilangan itu adalah 3. hasil kali kedua bilangan itu adalah...",
    'options': ['A. 81', 'B. 176', 'C. 180', 'D. 182'],
    'answer_index': 2,
  },
  {
    'id': 7,
    'question':
        "Harga 8 buah buku tulis dan 6 buah pensil Rp. 14.400,00 harga 6 buah buku tulis dan 5 buah pensil Rp. 11.200,00. Jumlah harga 5 buah buku tulis dan 8 buah pensil adalah...",
    'options': [
      'A. Rp.13.600,00',
      'B. Rp. 12.800,00',
      'C. Rp. 12.400,00',
      'D. Rp. 11.800,00'
    ],
    'answer_index': 0,
  },
  {
    'id': 8,
    'question':
        "Umur Sani 7 tahun lebih tua dari umur Ari. Sedangkan jumlah umur mereka adalah 43 tahun. Berapakah umur masing-masing...",
    'options': [
      'A. Sani 24 tahun dan Ari 19 tahun ',
      'B. Sani 25 tahun dan Ari 18 tahun ',
      'C. Sani 26 tahun dan Ari 17 tahun ',
      'D. Sani 27 tahun dan Ari 16 tahun'
    ],
    'answer_index': 1,
  },
  {
    'id': 9,
    'question':
        "Jumlah dua bilangan adalah 67 dan selisihnya 13. Jika dibuat suatu pecahan dengan pembilangnya bilangan yang kecil, maka penyebut pecahan tersebut adalah...",
    'options': ['A. 67', 'B. 40', 'C. 27', 'D. 13'],
    'answer_index': 1,
  },
  {
    'id': 10,
    'question':
        "Harga 2 kg salak dan 3 kg jeruk adalah RP.32.000,00, sedangkan harga 3 kg salak dan 2 kg jeruk adalah RP.33.000,00. Harga 1 kg salak dan 5 kg jeruk adalah...",
    'options': [
      'A. Rp. 49.000,00 ',
      'B. Rp. 41.000,00 ',
      'C. Rp. 37.000,00 ',
      'D. Rp. 30.000,00 '
    ],
    'answer_index': 2,
  },
];
