import 'package:flutter/material.dart';
import 'pert4/pert4_page.dart';
import 'theme/app_theme.dart';
import 'widgets/app.button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

// GANTI angka 0 dengan digit terakhir NIM kamu.
  static const int d = 0;

// GANTI dengan NIM lengkap kamu.
  static const String nim = '20240801185';

// GANTI dengan username GitHub kamu.
  static const String githubUsername = 'Meyliansari';

  static const String nama = 'Meylia Nilamsari';
  static const String programStudi = 'Teknik Informatika';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Profile Card'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular((8 + d).toDouble()),
            ),
            child: Padding(
              padding: EdgeInsets.all((16 + d).toDouble()),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: (40 + 2 * d) / 2,
                    child: const Icon(Icons.person),
                  ),
                  SizedBox(height: (8 + d).toDouble()),
                  const Text(nama),
                  SizedBox(height: (8 + d).toDouble()),
                  const Text(nim),
                  const Text(programStudi),
                  const SizedBox(height: 16),
                  const Text(
                    'Saya Mahasiswa Teknik Informatika yang tertarik pada teknologi, pemograman, dan pengembangan aplikasi.'
                        'Saya senang belajar hal baru dan mengembangkan kemampuan diri.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  AppButton(
                    label: 'Kunjungi GitHub Saya',
                    icon: Icons.open_in_new,
                    url: 'https://github.com/Meyliansari/meylia_kelompok1_kh002',
                    height: (40 + d).toDouble(),
                    borderRadius: (4 + d).toDouble(),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: (40 + d).toDouble(),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Pert4Page(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.folder_special),
                      label: const Text('Buka Pertemuan 4'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular((4 + d).toDouble()),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
