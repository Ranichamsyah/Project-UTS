import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanDetailProfil extends StatelessWidget {
  final String nama;
  final String ttl;
  final String alamat;
  final String noHp;
  final String email;
  final String urlGithub;
  final String riwayatPendidikan;
  final String penghargaan;
  final String foto; // Tambahkan parameter foto

  HalamanDetailProfil({
    required this.nama,
    required this.ttl,
    required this.alamat,
    required this.noHp,
    required this.email,
    required this.urlGithub,
    required this.riwayatPendidikan,
    required this.penghargaan,
    required this.foto, // Tambahkan parameter foto ke konstruktor
  });

  // Function to launch email app
  _launchEmail(String emailAddress) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  // Function to launch GitHub profile in browser
  _launchGithub(String githubUrl) async {
    if (await canLaunch(githubUrl)) {
      await launch(githubUrl);
    } else {
      throw 'Could not launch $githubUrl';
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profil'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  foto, 
                  width: 200,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Nama: $nama',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'TTL: $ttl',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Alamat: $alamat',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'No. HP: $noHp',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                _launchEmail(email);
              },
              child: Text(
                'Email: $email',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                _launchGithub(urlGithub);
              },
              child: Text(
                'URL Profil GitHub: $urlGithub',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
            SizedBox(height: 10),
          Text(
            'Riwayat Pendidikan:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: riwayatPendidikan.split(', ').map((String pendidikan) {
              return ListTile(
                leading: Icon(Icons.arrow_right),
                title: Text(
                  pendidikan.trim(),
                  style: TextStyle(fontSize: 16),
                ),
              );
            }).toList(),
          ),
          
            SizedBox(height: 10),
            if (penghargaan.isNotEmpty) ...[
              Text(
                'Penghargaan:\n$penghargaan',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
            ],
          ],
        ),
      ),
    );
  }
}
