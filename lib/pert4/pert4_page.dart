import 'package:flutter/material.dart';

class Pert4Page extends StatefulWidget {
  const Pert4Page({super.key});

  @override
  State<Pert4Page> createState() => _Pert4PageState();
}

class _Pert4PageState extends State<Pert4Page> {
  // Informasi Mahasiswa
  final String nama = 'Meylia Nilamsari';
  final String nim = '20240801185';
  final String githubUrl = 'https://github.com/Meyliansari';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 4 - Praktikum'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tugas / Praktikum Pertemuan 4',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Divider(height: 24),
                    Row(
                      children: [
                        const Icon(Icons.person, color: Colors.blue),
                        const SizedBox(width: 8),
                        Text('Nama: $nama', style: const TextStyle(fontSize: 16)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.badge, color: Colors.blue),
                        const SizedBox(width: 8),
                        Text('NIM: $nim', style: const TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Materi / Konten Pertemuan 4',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            Card(
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Silakan tambahkan widget atau latihan untuk Pertemuan 4 di halaman ini.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
