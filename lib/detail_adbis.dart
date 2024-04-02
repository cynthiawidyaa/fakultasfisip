//detail_adbis.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPageAdbis extends StatelessWidget {
  const DetailPageAdbis({Key? key}) : super(key: key);
  final String _upnjatimUrl = 'https://adbis.upnjatim.ac.id/';

  void _openUPNJatimUrl() async {
    if (await canLaunch(_upnjatimUrl)) {
      await launch(_upnjatimUrl);
    } else {
      throw 'Could not launch $_upnjatimUrl';
    }
  }

  void _sendEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'adbisupnvjt@gmail.com',
      queryParameters: {'subject': '', 'body': ''},
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Program Studi Administrasi Bisnis'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: Image.asset(
                    'assets/adbis.png',
                  ),
                ),
              ),
              ListTile(
                title: Text('Profil'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilProdiAdbis()),
                  );
                },
              ),
              ListTile(
                title: Text('Visi dan Misi'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VisiMisiPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Akreditasi'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AkreditasiPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Ketua Program Studi dan Dosen'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DosenPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Prestasi Mahasiswa'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrestasiMahasiswaPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10,
                width: double.infinity,
                color: const Color.fromARGB(255, 255, 243, 137),
              ),
              SizedBox(height: 3),
              Container(
                height: 260,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 3),
              Container(
                height: 10,
                width: double.infinity,
                color: const Color.fromARGB(255, 255, 243, 137),
              ),
              SizedBox(height: 20),
              Text(
                'Program Studi Administrasi Bisnis di UPN "Veteran" Jawa Timur berkomitmen untuk mencetak lulusan yang mempunyai kemampuan sebagai manajer bisnis dan konsultan bisnis yang berkualitas. Sebagai lulusan Program Studi Administrasi Bisnis, mereka dilatih untuk memiliki pemahaman yang mendalam tentang berbagai aspek administrasi bisnis, termasuk manajemen sumber daya manusia, keuangan, pemasaran, dan operasi. Sebagai manajer bisnis, lulusan diarahkan untuk menjadi pemimpin yang efektif dalam mengelola perusahaan atau organisasi secara keseluruhan. Mereka juga dibekali dengan keterampilan wirausaha yang kuat, memungkinkan mereka untuk memulai dan mengelola usaha mereka sendiri. Selain itu, sebagai konsultan bisnis, lulusan diharapkan dapat memberikan saran yang bernilai tambah kepada perusahaan atau organisasi dalam hal strategi bisnis, analisis pasar, perencanaan keuangan, dan inovasi produk. Dengan demikian, lulusan Program Studi Administrasi Bisnis di UPN "Veteran" Jawa Timur diharapkan dapat berperan sebagai pemimpin dan inovator dalam dunia bisnis yang dinamis.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _openUPNJatimUrl,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 243, 137),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.language,
                            color: Color.fromRGBO(91, 81, 81, 1)),
                        SizedBox(width: 8),
                        Text(
                          'Kunjungi Website',
                          style: TextStyle(
                            color: Color.fromRGBO(91, 81, 81, 1),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _sendEmail,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 243, 137),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.email, color: Color.fromRGBO(91, 81, 81, 1)),
                        SizedBox(width: 8),
                        Text(
                          'Kirim Email',
                          style: TextStyle(
                            color: Color.fromRGBO(91, 81, 81, 1),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 243, 137),
                    width: 2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alamat Program Studi:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Program Studi S1 Administrasi Bisnis UPN “Veteran” Jawa Timur berada di Fakultas Ilmu Sosial dan Ilmu Politik.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/footer.png',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilProdiAdbis extends StatelessWidget {
  const ProfilProdiAdbis({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROFIL PROGRAM STUDI ADMINISTRASI BISNIS',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/profiladbis.png',
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.yellow[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DESKRIPSI',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Program Studi Ilmu Administrasi Bisnis (Prodi Adbis) merupakan salah satu dari 4 (Lima) Prodi yang dimiliki Fakultas Ilmu Sosial dan Ilmu Politik (FISIP), Universitas Pembangunan Nasional (UPN) “Veteran” Jawa Timur. Prodi Adbis berdiri pada tahun 1993 berdasarkan Surat Keputusan Menhankam Nomor Kep/01/II/1993, tanggal 27 Pebruari 1993 dengan status Negeri Kedinasan. Pada tanggal 6 Oktober 2014 UPN “Veteran” berubah statusnya menjadi Perguruan Tinggi Negeri (PTN), berdasarkan Peraturan Presiden Nomor: 122 Tahun 2014 tentang Penegerian UPN “Veteran” Jawa Timur.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.yellow[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FASILITAS',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Dalam Program Studi Administrasi Bisnis menyediakan fasilitas berupa: \n'
                      '1. Laboratorium untuk Galeri Investasi, Inkubator Bisnis, Tax Center, Cyber Marketing. \n'
                      '2. Himpunan Mahasiswa (HIMANIS).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VisiMisiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VISI DAN MISI PROGRAM STUDI ADMINISTRASI BISNIS',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/visimisiadbis.png',
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.yellow[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VISI',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '“Program Studi Administrasi Bisnis Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran”Jawa Timur (FISIP-UPNVJT) sebagai lembaga pengembangan ilmu dan teknologi di bidang Administrasi Bisnis yang Unggul, Terpercaya dan berkarakter Bela Negara pada tahun 2024”',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.yellow[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MISI',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '1. Menyelenggarakan pendidikan dan pengajaran di bidang Administrasi Bisnis.yang berkualitas, relevan, dan berorientasi pada kebutuhan masyarakat, bangsa, dan Negara.\n'
                      '2. Menyelenggarakan kegiatan penelitian di bidang Administrasi Bisnis utamanya pada bidang pemasaran, keuangan, sumber daya manusia, sistem informasi bisnis, operasi bisnis, kebijakan bisnis serta mengimplementasikannya dalam pendidikan dan pengajaran serta pengabdian pada masyarakat.\n'
                      '3. Mengembangkan dan menguatkan hubungan kerjasama dengan berbagai pihak baik dengan pemerintah maupun lembaga swasta dalam dan luar negeri.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AkreditasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AKREDITASI PROGRAM STUDI ADMINISTRASI BISNIS',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/akreditasiadbis.jpg',
                      height: 400,
                      width: 600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.yellow[50],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Badan Akreditasi Nasional Perguruan Tinggi berdasarkan Keputusan BAN-PT No. 3166/SK/BAN-PT/AK-PPJ/S/V/2021, menyatakan bahwa Program Studi Ilmu Administrasi Bisnis, Pada Program Sarjana Universitas Pembangunan Nasional Veteran Jawa Timur, Kota Surabaya memenuhi syarat peringkat Akreditasi A.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DosenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DOSEN PROGRAM STUDI ADMINISTRASI BISNIS',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/kooradbis.png',
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DOSEN PROGRAM STUDI ADMINISTRASI BISNIS',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Dr.Ir. Rusdi Hidayat N, M.Si\n'
                    '2. Dr. Drs. Nurhadi, M.Si\n'
                    '3. R Yuniadi Rusdianto, M.Si\n'
                    '4. Dra. Ety Dwi Susanti, M.Si\n'
                    '5. Dra.Sonja Andarini., M,Si\n'
                    '6. Dr. Jojok Dwiridotjahjono, S.Sos.,M.Si\n'
                    '7. Wahyu F Ridho., SKM., MBA\n'
                    '8. Budi Prabowo, S.Sos.,M.M\n'
                    '9. Dra.Lia Nirawati, M.Si\n'
                    '10. Dra. Siti Ning Farida, M.Si\n'
                    '11. Sumainah Fauziah, S.AB.,M.AB\n'
                    '12. Aufa Izzuddin Baihaqi  S.AB.,M.AB\n'
                    '13. Maharani Ikaningtyas, SE.,M.AB\n'
                    '14. Indah Respati Kusumasari, S.Sos.,M.Si\n'
                    '15. Rima Ambarwati SH., SAB\n'
                    '16. Fauzan. S.AB',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrestasiMahasiswaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow[50],
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              'Prestasi Mahasiswa Administrasi Bisnis',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            bottom: TabBar(
              labelStyle: TextStyle(color: Colors.black),
              unselectedLabelStyle: TextStyle(color: Colors.black),
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: 'Prestasi'),
                Tab(text: 'Dokumentasi Mahasiswa'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Prestasi(),
              DokumentasiMahasiswa(),
            ],
          ),
        ),
      ),
    );
  }
}

class Prestasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildListItem(
          text: '1. Juara Persahabatan Duta Perlindungan Anak Jawa Timur 2023',
        ),
        _buildListItem(
          text:
              '2. Juara 1 Duta Bahasa Jawa Timur 2023 Balai Bahasa Jawa Timur',
        ),
        _buildListItem(
          text:
              '3. Juara 2 Badminton Ganda Putra Badminton Competition Fisip Fest 14th 2023 UPN "Veteran" Jawa Timur',
        ),
        _buildListItem(
          text:
              '4. JUARA 3 100m Gaya Bebas, JUARA 2 50m Gaya Kupu, JUARA 3 50m Gaya Bebas POMPROV Jawa Timur II 2023',
        ),
        _buildListItem(
          text:
              '5. JUARA 2 FUTSAL Futsal Competition Fisip Fest 14th 2023 UPN "Veteran" Jawa Timur',
        ),
        _buildListItem(
          text:
              '6. JUARA 1 Business Plan Competition Diesnatalis Kopma Dr. Angka ITS 41 Institut Teknologi Sepuluh Nopember',
        ),
        _buildListItem(
          text:
              '7. Juara 2 Badminton Ganda Campuran Badminton Competition Fisip Fest 14th 2023 UPN "Veteran" Jawa Timur',
        ),
        _buildListItem(
          text: '8. Most Favorite Art Competition FISIP FEST 13 2022',
        ),
        _buildListItem(
          text:
              '9. JUARA 3 Lomba Inovasi Kewirausahaan Mahasiswa Indonesia (LIKMI) #2 Universitas Negeri Yogyakarta 2023',
        ),
      ],
    );
  }

  Widget _buildListItem({
    required String text,
  }) {
    return Column(
      children: [
        ListTile(
          title: Text(
            text,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 12.0),
          ),
        ),
        Divider(),
      ],
    );
  }
}

class DokumentasiMahasiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          _buildGridItem('assets/presadbis1.jpg'),
          _buildGridItem('assets/presadbis2.jpg'),
          _buildGridItem('assets/presadbis3.jpg'),
          _buildGridItem('assets/presadbis4.jpg'),
          _buildGridItem('assets/presadbis5.jpg'),
          _buildGridItem('assets/presadbis6.jpg'),
          _buildGridItem('assets/presadbis7.jpg'),
          _buildGridItem('assets/presadbis8.jpg'),
          _buildGridItem('assets/presadbis9.jpg'),
          _buildGridItem('assets/presadbis10.jpg'),
        ],
      ),
    );
  }

  Widget _buildGridItem(String imageUrl) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageUrl,
            width: 230,
            height: 230,
          ),
        ],
      ),
    );
  }
}
