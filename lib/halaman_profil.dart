import 'package:flutter/material.dart';
import 'package:project_uts/halaman_detail_profil.dart';

class HalamanProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          _buildProfileButton(
            context,
            'Syuraini Noor Chamsyah',
            'assets/Syuraini.jpg', // Lokasi foto profil
            'Profil Syuraini Noor Chamsyah',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HalamanDetailProfil(
                    nama: 'Syuraini Noor Chamsyah',
                    ttl: '25 Februari 2004',
                    alamat: 'Kendangsari XI 4a',
                    noHp: '085748541139',
                    email: '22082010033@student.upnjatim.ac.id',
                    urlGithub: 'https://github.com/Ranichamsyah',
                    riwayatPendidikan:'SD ISKANDAR SAID, SMP 35 SURABAYA, SMAN 10 SURABAYA',
                    penghargaan: 'KETUA PELAKSANA PROGRAM KERJA DONOR DARAH BEM FASILKOM 2023',
                    foto: 'assets/Syuraini.jpg', // Add the photo path here
                  ),
                ),
              );
            },
          ),
          _buildProfileButton(
            context,
            'Rendy Achmadiansyah Mukti',
            'assets/Rendy.jpg', // Lokasi foto profil
            'Profil Rendy Achmadiansyah Mukti',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HalamanDetailProfil(
                    nama: 'Rendy Achmadiansyah M',
                    ttl: '22 Desember 2023',
                    alamat: 'Jl. Tembok Lor 1/19',
                    noHp: '081234941100',
                    email: 'rendyachmad55@gmail.com',
                    urlGithub: 'https://github.com/rndyachmad',
                    riwayatPendidikan: 'SD NEGERI KLURAK, SMPN 2 SURABAYA, SMAN 8 SURABAYA',
                    penghargaan: 'KEPALA DIVISI PERLOMBAAN SPORT FASILKOM FEST BEM FASILKOM 2024', // Kosong jika tidak ada penghargaan
                    foto: 'assets/Rendy.jpg', // Add the photo path here
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

 Widget _buildProfileButton(BuildContext context, String nama, String foto, String buttonText, Function() onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              foto,
              width: 300,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            buttonText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

