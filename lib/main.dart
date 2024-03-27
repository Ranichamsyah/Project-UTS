import 'package:flutter/material.dart';
import 'halaman_daftar_prodi.dart';

void main() {
  runApp(FakultasApp());
}

class FakultasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HalamanDaftarProdi(),
    );
  }
}
