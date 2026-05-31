import 'package:flutter/material.dart';
import 'buku_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar header
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://images.unsplash.com/photo-1507842217343-583bb7270b66?w=800',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 28),

              // Menu 1 - Fiksi & Novel
              _tombolMenu(context, 'Fiksi & Novel', Color(0xFF3498DB)),
              SizedBox(height: 12),

              // Menu 2 - Teknologi & IT
              _tombolMenu(context, 'Teknologi & IT', Color(0xFF9B59B6)),
              SizedBox(height: 12),

              // Menu 3 - Sains & Matematika
              _tombolMenu(context, 'Sains & Matematika', Color(0xFF27AE60)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tombolMenu(BuildContext context, String judul, Color warna) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BukuPage(kategori: judul),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: warna,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          judul,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
