import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanDetailProdi extends StatelessWidget {
   // Fungsi untuk membuka website
  // Fungsi untuk membuka website

  final String namaProdi;

  // Data detail program studi
  final Map<String, Map<String, dynamic>> detailProdi = {
    'S-1 Teknik Kimia': {
      'deskripsi': 'Prodi Teknik Kimia adalah bidang yang mempelajari proses kimia yang berhubungan dengan transpormasi bahan baku menjadi produk melewati proses-proses kimiawi dan fisik.',
      'foto': 'assets/kimia.jpg',
      'visi': ['“Menjadi Program Studi yang unggul dalam IPTEK di bidang Teknik Kimia yang berkarakter bela negara.”.'],
      'misi': ['Menyelenggarakan proses pendidikan dan pengajaran yang berkompetensi,  berwawasan technopreneur dan berkarakter bela negara', 'Menyelenggarakan kegiatan penelitian dasar dan terapan, khususnya di bidang pengelolaan sumber daya alam, energi yang berwawasan lingkungan','Menyelenggarakan kegiatan pengabdian kepada masyarakat melalui penerapan iptek','Menyelenggarakan tata kelola program studi yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran dan','Mengembangkan kualitas tenaga pengajar, tenaga kependidikan unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan , dan manajerial','Meningkatkan sistem pengelolaan sarana dan prasarana kegiatan proses belajar mengajar ,laboratorium dasar dan, laboratorium profesional','Menyelenggarakan kerjasama dengan pemerintah, industri, lembaga pendidikan dan penelitian, termasuk luar negeri'],
      'akreditasi': 'A',
      'namaKetua': 'Dr. Ir. Sintha Soraya Santi, MT.',
      'namaDosen': ['Prof Sri Rejeki', 'Prof. Dr. Ir. Ni Ketut Sari, M.T.','Dr. Ir. Srie Muljani, M.T.','Dr. Ir. Sintha Soraya Santi, M.T','Ir. Sutiyono, M.T.'],
      'website': 'https://tekkimia.upnjatim.ac.id/',
      'email': 'tekkimia@upnjatim.ac.id',
      'prestasi': ['Fitrah Guna Muhammad - (Juara 2 Lomba Demo Jujitsu Unesa Open 2023)', 'Ilham Alva Royyan - (Juara 1 Essay Nasional 2023)','Ayu Fakhira Yuliananda (Juara 3 E-Sport Mobile Legend Competition)'],
    },
    'S-1 Teknik Industri': {
      'deskripsi': 'Program Studi Teknik lndustri (Prodi TI) Fakultas Teknik UPN ”Veteran” Jawa Timur didirikan pada tahun 1990 dengan status Negeri Kedinasan. Pada tahun 1994, dengan adanya keputusan bersama Menhankam dan Mendikbud Nomor: Kep/0307/U/1994, statusnya berubah menjadi Swasta “Disamakan”.',
      'foto': 'assets/tekdus.jpg',
      'visi': ['“Menjadi program studi unggul dalam pengembangan keilmuan teknik industri dalam meningkatkan produktifitas dan kualitas sistem yang berkarakter Bela Negara”.'],
      'misi': ['-'],
      'akreditasi': 'UNGGUL',
      'namaKetua': 'Ir. Rusindiyanto, MT.',
      'namaDosen': ['Dr. Farida Pulansari, ST., MT., CSCM., IPM.', 'Dr. Ir. Minto Waluyo, MM','Dr. Dira Ernawati, ST., MT.','Ir. Moch.Tutuk Safirin, MT.','Ir. Rr. Rochmoeljati, MMT.','Ir. Sumiati. MT.','Ir. Endang Pudji W., MMT.','Ir. Rusindiyanto, MT.','Ir. Joumil Aidil SZS., MT.','Ir. Iriani, MMT.'],
      'website': 'https://tekindustri.upnjatim.ac.id/',
      'email': 'teknik.industri@upnjatim.ac.id',
      'prestasi': ['Muhammad Mahfudh Bil Haqqi - (Juara 2 Kompetisi Esai Nasional 2023)', 'Tryandika Rizkat Prashodang - (Juara 2 Kompetisi Esai Nasional 2023)','Muhammad Muhkarul Haqi (Juara 2 Kompetisi Esai Nasional 2023)', 'Bagus Wicaksono - (Juara 1 Pencak Silat Kelas 1 Putra Porprov Jawa Tengah 2023)'],
    },
      'S-1 Teknik Lingkungan': {
      'deskripsi': 'Program Studi Teknik Lingkungan FTSP UPN “Veteran” Jawa Timur, berdiri tahun 1993 dengan status NEGERI KEDINASAN di bawah pengelolaan Departemen Pertahanan dan Keamanan. Dalam perkembangannya berdasarkan surat keputusan bersama Mendikbud No : Kep/0307/X/1994 dan Menhankam No : Kep/10/XI/1994 status Jurusan Teknik Lingkungan menjadi swasta disamakan serta berubah menjadi Program Studi pada tahun 2009.',
      'foto': 'assets/tekling.jpg',
      'visi': ['"Menjadi Program Studi Teknik Lingkungan yang unggul, menghasilkan lulusan yang berdaya saing di bidang rekayasa dan manajemen lingkungan, dengan karakter bela negara"'],
      'misi': ['-'],
      'akreditasi': 'UNGGUL',
      'namaKetua': 'Firra Rosariawari, ST., MT.',
      'namaDosen': ['Prof. Euis Nurul Hidayah, MT., PhD.', 'Prof. Dr. Ir. Novirina Hendrasarie, MT.','Raden Kokoh Haryo Putro ST., MT.','Aussie Amalia, ST., MSc.','Dr. Ir. Munawar Ali, MT.','Ir. Naniek Ratni Juliardi A.R, MKes.','Ir. Tuhu Agung Rachmanto, MT.','Dr. Okik Hendriyanto Cahyonugroho., ST., MT.','Ir. Yuliatin Ali S., MM.','Ir. Yayok Suryo Purnomo, MS.'],
      'website': 'https://teklingk.upnjatim.ac.id/',
      'email': 'teknik.lingkungan@upnjatim.ac.id',
      'prestasi': ['Virgirina Saljah - (Juara 1 Lomba Panjat Tebing Olympic Game Mix PORPROV JATIM 2023)', 'Miranda Putri (Juara 1 Esport Mobile Legends Ladies PORPROV JATIM 2023)','Muhammad Hilmy Febriansyah - (Juara 2 Futsal PORPROV JATIM 2023)'],
    },
      'S-1 Teknik Pangan': {
      'deskripsi': 'Program Studi Teknologi Pangan (PS-TP) berada di bawah Fakultas Teknik – Universitas Pembangunan Nasional “Veteran” Jawa Timur. Dasar pendirian berdasarkan SK Rektor No. SKEP/254/VII/1993 dan disahkan dengan SKB Mendikbud RI dan Menhankam RI Nomor: Kep/0307/U/1994 – 10/XI/1994 tanggal 29 Nopember 1994. Pada tahun 1995, PS-TP memperoleh status terdaftar berdasar SK Dirjen Dikti Depdikbud No. 024/Dikti/Kep/1995 dan berdasarkan Surat Keputusan BAN – PT Depdiknas RI No. 0444/AK-I-III-033/UPNPA/XI/2000, tanggal 23 November 2000 PS-TP telah terakreditasi (B). Sejak tanggal 26 Januari 2006, berdasarkan Surat Keputusan BAN-PT Depdiknas RI No. 028/BAN-PT/Ak-IX/S1/I/2006, PS-TP telah terakreditasi (A) untuk selama 5 tahun sejak tanggal ditetapkan.',
      'foto': 'assets/tekpang.jpg',
      'visi': ['"Menjadi Program Studi Teknologi Pangan yang berkualitas dibidang ilmu dan teknologi pangan yang berkarakter bela negara pada tahun 2024".'],
      'misi': ['Menyelenggarakan pendidikan dan pembelajaran berkualitas di bidang Teknologi berkarakter bela negara.', 'Mengembangkan sumberdaya manusia yang berkualitas dalam bidang pendidikan, pengajaran, dan penelitian.','Meningkatkan kualitas dan system pengolahan dan pengadaan sarana dan prasarana laboratorium.','Menyelenggarakan kegiatan penelitian untuk pengembangan ilmu teknologi pangan melalui rekayasa pangan berbahan baku local.','Menyelenggarakan tata kelola yang baik, sehat, bersih dan transparan dalam rangka mencapai akuntabilitas pengelolaan program studi.','Menyelenggarakan kerjasama pendidikan, penelitian dan pengabdian kepada masyarakat dengan mitra baik nasional maupun internasional.'],
      'akreditasi': 'A',
      'namaKetua': 'Dr. Rosida, S.TP, MP.',
      'namaDosen': ['Dr. Rosida, S.TP, MP.', 'Dr. Ir. Sri Winarti, MP.','Dr. Dra. Jariyah, MP., MT.','Dr. Dedin F. Rosida, S.TP M.Kes.','Dr. drh. Ratna Yulistiani, MP.','Ir. Ulya Sarofa, MM.'],
      'website': 'https://tekpangan.upnjatim.ac.id/',
      'email': 'progdi.tp@upnjatim.ac.id',
      'prestasi': ['Regita Dwi Pramesti - (Juara 1 Kumite Regional Elite Putri dan Juara 2 Kumite Senior Jujitsu Unesa Open 2023)', 'Alvina ayu puspita - (Pendanaan Riset Program Indofood Riset Nugroho Periode 2022 – 2023)','Yogi Pradhana - (Juara 3 Basket Fasilkom Fest)'],
    },
    'S-1 Teknik Sipil': {
      'deskripsi': 'Program Studi Teknik Sipil UPN “Veteran” Jawa Timur berdiri tahun 1993 dengan status NEGERI KEDINASAN di bawah pengelolaan Departemen Pertahanan dan Keamanan dengan nama Fakutas Teknik Sipil dan Perencanaan (FTSP). FTSP kala itu memilik 3 program studi, yaitu : Teknik Lingkungan, Teknik Arsitektur dan Teknik Sipil. Dalam perkembangannya berdasarkan surat keputusan bersama Mendikbud No : Kep/0307/X/1994 dan Menhankam No : Kep/10/XI/1994 status Fakultas Teknik Sipil Dan Perencanaan menjadi swasta disamakan serta berubah menjadi Program Studi pada tahun 2009.',
      'foto': 'assets/teksip.jpg',
      'visi': ['"Visi Program Studi Teknik Sipil adalah menjadi program studi yang unggul dalam pengembangan dan penerapan ilmu pengetahuan, teknologi (IPTEK) serta sumber daya manusia guna menumbuhkembangkan potensi daerah yang mampu bersaing dalam pasar bebas dan berkarakter bela negara."'],
      'misi': ['Menyelenggarakan dan mengembangkan pendidikan di bidang teknik sipil berkarakter bela negara.', 'Meningkatkan budaya riset dalam pengembangan bidang ilmu pengetahuan, dan teknologi (IPTEK) yang berdaya guna untuk kesejahteraan masyarakat.','Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.','Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.','Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial.','Meningkatkan sistem pengelolaan sarana dan prasarana.','Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri'],
      'akreditasi': 'B',
      'namaKetua': 'Dr. Ir. Hendrata Wibisana, M.T.',
      'namaDosen': ['Ir. Wahyu Kartini, M.T.', 'Cintantya Budi Casita, S.T., M.T.','Dr. Ir. Made D. Astawa, M.T.','Sumaidi, S.T., M.T.','Nia Dwi Puspitasari, S.T., M.T.','Dr. Ir. Minarni Nur Trilita, M.T.','Novie Handajani, S.T., M.T.','Iwan Wahjudijanto, S.T., M.T.','Ir. Siti Zainab, M.T.','Ibnu Sholichin, S.T., M.T.'],
      'website': 'https://teksipil.upnjatim.ac.id/profil-prodi/',
      'email': 'tekniksipil_ft@upnjatim.ac.id',
      'prestasi': ['Izmanaya Avril - (Juara 3 Civil Tender Competition 2023)', 'Al Firdaus Nawawi - (Juara 3 Civil Tender Competition 2023)','Sulthanul Aulia - (Juara 3 Civil Tender Competition 2023)'],
    },
    // Tambahkan detail untuk program studi lainnya di sini
  };

  HalamanDetailProdi({required this.namaProdi});

  @override
  Widget build(BuildContext context) {
    // Ambil data detail berdasarkan nama program studi
    Map<String, dynamic> detail = detailProdi[namaProdi] ?? {};

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Program Studi'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              namaProdi,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            // Deskripsi Profil
            Text(
              'Profil:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              detail['deskripsi'] ?? 'Deskripsi tidak tersedia',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            // Foto
            Text(
              'Foto:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            // Tambahkan widget untuk menampilkan foto program studi
            Image.asset(
              detail['foto'] ?? 'assets/default_photo.jpg',
              width: 1260,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            // Visi
            Text(
              'Visi:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: (detail['visi'] as List<String>?)
                      ?.map((visi) => Text(visi))
                      .toList() ??
                  [Text('Visi tidak tersedia')],
            ),
            SizedBox(height: 20.0),
            // Misi
            Text(
              'Misi:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: (detail['misi'] as List<String>?)
                      ?.map((misi) => Text('• $misi'))
                      .toList() ??
                  [Text('Misi tidak tersedia')],
            ),
            SizedBox(height: 20.0),
            // Akreditasi
            Text(
              'Akreditasi:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              detail['akreditasi'] ?? 'Akreditasi tidak tersedia',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            // Nama Ketua Program Studi
            Text(
              'Nama Ketua Program Studi:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              detail['namaKetua'] ?? 'Nama ketua tidak tersedia',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            // Nama Dosen
            Text(
              'Dosen:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: (detail['namaDosen'] as List<String>?)
                      ?.map((dosen) => Text('• $dosen'))
                      .toList() ??
                  [Text('Dosen tidak tersedia')],
            ),
            SizedBox(height: 20.0),
            // Link Website
            Text(
              'Website:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
             _launchWebsite(detail['website']);
              },
              child: Text(
                detail['website'] ?? 'Website tidak tersedia',
                style: TextStyle(fontSize: 16.0, color: Colors.blue),
              ),
            ),
            SizedBox(height: 20.0),
            // Link Email Fakultas
            Text(
              'Email Fakultas:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                 _launchEmail(detail['email']);
              },
              child: Text(
                detail['email'] ?? 'Email tidak tersedia',
                style: TextStyle(fontSize: 16.0, color: Colors.blue),
              ),
            ),
            SizedBox(height: 20.0),
            // Prestasi Mahasiswa
            Text(
              'Prestasi Mahasiswa:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: (detail['prestasi'] as List<String>?)
                      ?.map((prestasi) => Text('• $prestasi', style: TextStyle(fontSize: 16.0)))
                      .toList() ??
                  [Text('Prestasi mahasiswa tidak tersedia')],
            ),
          ],
        ),
      ),
    );
  }

  void _launchWebsite(String url) async {
    if (await canLaunch(url)) {
        await launch(url);
    } else {
        throw 'Could not launch $url';
      }
    }
  void _launchEmail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );
    final String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } 
}
  


