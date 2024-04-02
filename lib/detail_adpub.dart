//detail_adpub.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPageAdpub extends StatelessWidget {
  const DetailPageAdpub({Key? key}) : super(key: key);
  final String _upnjatimUrl = 'https://adneg.upnjatim.ac.id/';

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
      path: 'adneg@upnjatim.ac.id',
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
          title: Text('Program Studi Administrasi Publik'),
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
                    'assets/adpub.png',
                  ),
                ),
              ),
              ListTile(
                title: Text('Profil'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilProdiAdpub()),
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
                    image: AssetImage('assets/2.png'),
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
                'Program Studi Administrasi Publik di UPN "Veteran" Jawa Timur berkomitmen untuk menghasilkan lulusan yang mampu menjadi ahli dalam manajemen pemerintahan dan administrasi publik. Tujuan dari program studi ini adalah menciptakan lulusan yang memiliki keahlian dalam mengelola organisasi publik, merancang kebijakan yang efektif, dan meningkatkan kinerja sektor publik secara keseluruhan. Sebagai manajer pemerintahan, lulusan Program Studi Administrasi Publik diarahkan untuk memiliki kompetensi dalam memimpin dan mengelola lembaga pemerintah atau organisasi non-pemerintah dengan efisien dan efektif. Mereka juga dilatih untuk menjadi inovator dalam pengembangan solusi untuk berbagai tantangan yang dihadapi oleh sektor publik. Selain itu, sebagai analis kebijakan, lulusan diarahkan untuk memiliki kemampuan dalam melakukan penelitian yang mendalam dan analisis kebijakan yang kritis untuk mendukung pengambilan keputusan yang berbasis bukti. Dengan demikian, lulusan Program Studi Administrasi Publik diharapkan dapat berperan sebagai agen perubahan yang positif dalam memajukan tata kelola pemerintahan dan meningkatkan kualitas layanan publik untuk masyarakat secara luas.',
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
                      'Program Studi S1 Administrasi Publik UPN “Veteran” Jawa Timur berada di Fakultas Ilmu Sosial dan Ilmu Politik.',
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

class ProfilProdiAdpub extends StatelessWidget {
  const ProfilProdiAdpub({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROFIL PROGRAM STUDI ADMINISTRASI PUBLIK',
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
                  'assets/profiladpub.png',
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
                      'Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) diselenggarakan berdasarkan keputusan Rektor 92/ UN63/KP/2020 tentang perubahan nama Program Studi Administrasi Publik. Mulai tahun 2022 hingga tahun 2026 Prodi Administrasi Publik terakreditasi UNGGUL. Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) didirikan untuk memenuhi kebutuhan tenaga profesional dalam bidang Administrasi Publik dan membantu pemerintah dalam menyediakan tenaga profesional yang kompeten dan memiliki daya saing.',
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
                      'Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) didirikan untuk memenuhi kebutuhan tenaga professional dalam bidang Administrasi Publik dan membantu pemerintah dalam menyediakan tenaga professional yang kompeten dan memiliki daya saing.',
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
                      'Dalam Program Studi Administrasi Publik  menyediakan fasilitas berupa:\n'
                      '1. Kalab Pusat Kajian Digital Governance Laboratorium Pusat Kajian Digital Governance.\n'
                      '2. Laboran.',
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
          'VISI DAN MISI PROGRAM STUDI ADMINISTRASI PUBLIK',
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
                  'assets/visimisiadpub.png',
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
                      '“Menjadi Program Studi Ilmu Administrasi Negara Unggul Berkarakter Bela Negara”     ',
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
                      '1. Menyelenggarakan dan mengembangkan pendidikan bidang ilmu administrasi negara yang berkarakter bela negara.\n'
                      '2. Meningkatkan budaya riset dalam pengembangan ilmu administrasi negara yang berdaya guna untuk peningkatan kesejahteraan masyarakat.\n'
                      '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.\n'
                      '4. Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di program studi ilmu administrasi negara.\n'
                      '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial yang relevan dengan bidang ilmu administrasi negara.\n'
                      '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di program studi ilmu administrasi negara.\n'
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
          'AKREDITASI PROGRAM STUDI ADMINISTRASI PUBLIK',
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
                      'assets/akreditasiadpub.png',
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
                          'Berdasarkan Keputusan BAN-PT No. 11836/SK/BAN-PT/Ak-PNB/S/X/2021, menyatakan bahwa Program Studi Administrasi Publik, Pada Program Sarjana Universitas Pembangunan Nasional "Veteran" Jawa Timur, Kota Surabaya memenuhi syarat peringkat Akreditasi A.\n'
                          '\n'
                          'Programme Accreditation of the Bachelor Programme Public Administration of the Universitas Pembangunan Nasional "Veteran" Jawa Timur Surabaya, Indonesia. The FIBAA Accreditation and Certification Committee awards its Quality Seal according to its resolution on November 26, 2021. The accreditation is valid until November 25, 2026. It is granted under condition.',
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
          'DOSEN PROGRAM STUDI ADMINISTRASI PUBLIK',
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
                  'assets/kooradpub.png',
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
                    'DOSEN PROGRAM STUDI ADMINISTRASI PUBLIK',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Dr. Ertien Rining Nawangsari,, MSi\n'
                    '2. Prof. Dr. Lukman Arif, MSi\n'
                    '3. Dr. Diana Hertati, MSi\n'
                    '4. Dr. Agus Widiyarta, MSi\n'
                    '5. Susi Hardjati, Hj. Dra., M. AP\n'
                    '6. Tukiman, S.Sos, MSi\n'
                    '7. Sri Wibawani, Dra., MSi\n'
                    '8. Ananta Prathama, Drs., M.Si.\n'
                    '9. Kalvin Edo Wahyudi, S.Sos, M.KP.\n'
                    '10. Dr. Moch Ali Mashuri, S.Sos, MSi\n'
                    '11. Arimurti Kriswibowo, S.IP., M.Si.\n'
                    '12. Dr. Endik Hidayat, SE., MIP\n'
                    '13. Binti Azizatun, N., S.IAN., MPA\n'
                    '14. Katerina Bataha, A.AP., M.P.A\n'
                    '15. Indira Arundinasari, S.A.P., M.Α.Ρ\n'
                    '16. Oktarizka Reviandani, S.A.P.,Μ.Α.Ρ\n'
                    '17. Bayu Priambodo, SIP., M.IP\n'
                    '18. Bagus Nuari Harmawan, MPA\n'
                    '19. Singgih Manggalau, S.IP., M.IP',
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
              'Prestasi Mahasiswa Administrasi Publik',
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
          text: '1. AWARDEE IISMA 2024',
        ),
        _buildListItem(
          text: '2. Juara 1 BMC dalam Lomba "Auction 2021: Festa Creativa"',
        ),
        _buildListItem(
          text: '3. Medali Perak Karate Dalam PON XX Papua 2021',
        ),
        _buildListItem(
          text: '4. Best Speaker 3 Titik National Business Plan Competition',
        ),
        _buildListItem(
          text:
              '5. Bronze Metal Dalam Lomba Karya Tulis Ilmiah (LKTI) Edutainer Nusantara Indonesia',
        ),
        _buildListItem(
          text:
              '6. Juara 2 Essay Nasional 2021 UKM Kajian dan Pemberdayaan Masyarakat, FISIP, Universitas Mulawarman',
        ),
        _buildListItem(
          text:
              '7. Best Team Annual National Business Plan Competition IDEAS 7 Manajemen UGM',
        ),
        _buildListItem(
          text: '8. Medali Gold Enf Indonesia Online Competition 2021',
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
          _buildGridItem('assets/presadpub1.jpg'),
          _buildGridItem('assets/presadpub2.jpg'),
          _buildGridItem('assets/presadpub3.jpg'),
          _buildGridItem('assets/presadpub4.jpg'),
          _buildGridItem('assets/presadpub5.jpg'),
          _buildGridItem('assets/presadpub6.jpg'),
          _buildGridItem('assets/presadpub7.jpg'),
          _buildGridItem('assets/presadpub8.jpg'),
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
