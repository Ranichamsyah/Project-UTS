import 'package:flutter/material.dart';
import 'package:project_uts/halaman_profil.dart';
import 'halaman_detail_prodi.dart';

class HalamanDaftarProdi extends StatelessWidget {
  final List<Map<String, dynamic>> daftarProdi = [
    {
      'nama': 'S-1 Teknik Kimia',
      'icon': Icons.science,
      'deskripsi': 'Program studi yang membahas tentang proses kimia dalam industri dan teknologi.'
    },
    {
      'nama': 'S-1 Teknik Industri',
      'icon': Icons.engineering,
      'deskripsi': 'Program studi yang mempelajari tentang perancangan dan pengembangan sistem produksi.'
    },
    {
      'nama': 'S-1 Teknik Lingkungan',
      'icon': Icons.landscape,
      'deskripsi': 'Program studi yang fokus pada pelestarian lingkungan hidup dan pembangunan berkelanjutan.'
    },
    {
      'nama': 'S-1 Teknik Pangan',
      'icon': Icons.food_bank,
      'deskripsi': 'Program studi yang membahas tentang produksi, pengolahan, dan keamanan pangan.'
    },
    {
      'nama': 'S-1 Teknik Sipil',
      'icon': Icons.build,
      'deskripsi': 'Program studi yang mempelajari tentang perencanaan, pembangunan, dan pemeliharaan infrastruktur.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              radius: 30,
              child: Image.asset('assets/upn.png'), // Menggunakan gambar sebagai logo di kiri AppBar
            ),
            SizedBox(width: 25), // Menambahkan jarak antara gambar dan teks
            Text(
              'PROFIL FAKULTAS TEKNIK UPN "VETERAN" JAWA TIMUR',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 25), // Menambahkan jarak antara teks dan gambar
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              radius: 28,
              child: Image.asset('assets/LogoBemTeknik.png'), // Menggunakan gambar sebagai logo di kanan AppBar
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Fakultas Teknik merupakan salah satu fakultas di UPN "Veteran" Jawa Timur memiliki 8 program studi:',
              style: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: daftarProdi.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanDetailProdi(namaProdi: daftarProdi[index]['nama'])),
                );
              },
              child: Card(
                elevation: 5.0,
                color: Colors.lightBlue[50], // Warna latar belakang card (biru muda)
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              daftarProdi[index]['icon'],
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            daftarProdi[index]['nama'],
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        daftarProdi[index]['deskripsi'],
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanProfil()), // Mengarahkan ke halaman profil
                  );
                },
                child: Text(
                  'Halaman Profil',
                  style: TextStyle(fontSize: 12.0, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
