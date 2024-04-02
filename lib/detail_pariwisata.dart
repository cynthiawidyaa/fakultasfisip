//detail_pariwisata.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPagePariwisata extends StatelessWidget {
  const DetailPagePariwisata({Key? key}) : super(key: key);
  final String _upnjatimUrl = 'https://pariwisata.upnjatim.ac.id/';

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
      path: 'humas@upnjatim.ac.id',
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
          title: Text('Program Studi Pariwisata'),
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
                    'assets/pariwisata.png',
                  ),
                ),
              ),
              ListTile(
                title: Text('Profil'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilProdiPariwisata()),
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
                    image: AssetImage('assets/5.png'),
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
                'Program Studi Pariwisata UPN “Veteran” Jawa Timur berkomitmen untuk menghasilkan lulusan sebagai Pengelola Destinasi Ekowisata dan Tenaga Ahli (Konsultan dan Instruktur) Ekowisata. Sebagai pengelola destinasi ekowisata, lulusan Program Studi Pariwisata UPN “Veteran” Jawa Timur diarahkan untuk memiliki kompetensi sebagai sociopreneur (manajer atau staf lainnya bidang ekowisata dan wirausaha ekowisata). Sedangkan sebagai tenaga ahli ekowisata, lulusan diarahkan untuk menjadi local enabler (konsultan, analis, peneliti, komunikator, dan birokrat).',
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
                      'Program Studi S1 Pariwisata UPN “Veteran” Jawa Timur berada di Fakultas Ilmu Sosial dan Ilmu Politik.',
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

class ProfilProdiPariwisata extends StatelessWidget {
  const ProfilProdiPariwisata({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROFIL PROGRAM STUDI PARIWISATA',
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
                  'assets/profilpariwisata.png',
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
                      'Program Studi Pariwisata UPN “Veteran” Jawa Timur berdiri pada tanggal tanggal 8 April 2020 berdasarkan Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor: 433/M/2020. Pendirian program studi ini untuk menjawab tantangan dan perkembangan industri pariwisata di Indonesia dan dunia.',
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
                      'KURIKULUM',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Kurikulum dan Capaian Pembelajaran Program Studi Pariwisata dirumuskan dengan mengacu pada:\n'
                      '1. KKNI dan Permenristekdikti No. 44 Tahun 2015 tentang SNPT.\n'
                      '2. Memasukkan capaian pembelajaran dengan ciri khas dari ketiga UPN Veteran (Jawa Timur, Yogyakarta dan Jakarta) yakni bela negara\n'
                      'Untuk memperoleh gelar kesarjanaan setiap mahasiswa Program Studi Pariwisata harus menyelesaikan minimal 144 SKS dan maksimal 160 SKS.',
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
                      'Dalam Program Studi Pariwisata  menyediakan fasilitas berupa:\n'
                      '1. Kalab Pariwisata: Laboratorium Destinasi (rencana), Laboratorium Tour-Travel (rencana)\n'
                      '2. Laboran\n',
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
          'VISI DAN MISI PROGRAM STUDI PARIWISATA',
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
                  'assets/visimisipariwisata.png',
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '“Menjadi program studi pariwisata unggulan yang adaptif dan inovatif melalui penyelenggaraan pendidikan yang berkarakter bela negara dan berwawasan lingkungan dalam mewujudkan pariwisata berkelanjutan dan berorientasi global”',
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
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '1. Menyelenggarakan dan mengembangkan pendidikan bidang pariwisata yang adaptif, inovatif dan berkarakter bela negara.\n'
                      '2. Meningkatkan budaya riset dalam pengembangan ilmu pariwisata yang berdaya guna untuk peningkatan kesejahteraan masyarakat.\n'
                      '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.'
                      '4. Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di program studi Pariwisata.\n'
                      '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial  yang relevan dengan bidang pariwisata.\n'
                      '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di program studi Pariwisata.\n'
                      '7. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri.',
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
          'AKREDITASI PROGRAM STUDI PARIWISATA',
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
                          'Berdasarkan Surat Keputusan Badan Akreditasi Nasional Perguruan Tinggi, Departemen Pendidikan Nasional No.5441/SK/BAN-PT/Ak.P/S/VIII/2022, Tertanggal 16 Juli 2021, Program Studi Pariwisata memperoleh nilai Akreditasi “B”.',
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
          'DOSEN PROGRAM STUDI PARIWISATA',
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
                  'assets/koorparwis.png',
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
                    'DOSEN PROGRAM STUDI PARIWISATA',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Leily Suci Rahmatin, S.Par., M.Par\n'
                    '2. Sheidy Yudhiasta, S.Pd., M.Par\n'
                    '3. Wahyuni, SST.Par., M.Par\n'
                    '4. Dr. A. Muammar Alawi, M.Pd.I.\n'
                    '5. Joko Mijiarto, S.Hut., M.Si\n'
                    '6. Fondina Gusriza, S.Pd., M.Sc\n'
                    '7. Made Bambang Adnyana, S.ST.Par.,M.Par\n'
                    '8. Garsione Agni Andrea. S.Pd., M.Sc\n'
                    '9. Puguh Andhi Setiawan, S.Tr.Par\n'
                    '10. Cika Ayu Safitri, A.md. M\n',
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
              'Prestasi Mahasiswa Pariwisata',
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
          text:
              '1. Juara 3 Tour Package Competition Marine Tourism Fest 2023 Politeknik Pariwisata Makassar',
        ),
        _buildListItem(
          text:
              '2. Winner puteri pariwisata dan ekonomi kreatif jawa timur 2024',
        ),
        _buildListItem(
          text:
              '3. Juara 3 Tour Package Competition Marine Tourism Fest 2023 Politeknik Pariwisata Makassar',
        ),
        _buildListItem(
          text: '4. Juara 2 VCT Game Changer APAC Academy',
        ),
        _buildListItem(
          text: '5. Juara 2 Cabang Olahraga Silat Porsimnas Wimaya 2022',
        ),
        _buildListItem(
          text: '6. Juara 1 Cabang Olahraga Futsal Porsimnas Wimaya 2022',
        ),
        _buildListItem(
          text:
              '7. Juara 2 dan Juara 3 Porprov VIII cabang olahraga Kickboxing',
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
          _buildGridItem('assets/presparwis1.jpg'),
          _buildGridItem('assets/presparwis2.jpg'),
          _buildGridItem('assets/presparwis3.jpg'),
          _buildGridItem('assets/presparwis4.jpg'),
          _buildGridItem('assets/presparwis5.jpg'),
          _buildGridItem('assets/presparwis6.jpg'),
          _buildGridItem('assets/presparwis7.jpg'),
          _buildGridItem('assets/presparwis8.jpg'),
        ],
      ),
    );
  }

  Widget _buildGridItem(String imageUrl) {
    return Container(
      padding: EdgeInsets.all(14),
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
