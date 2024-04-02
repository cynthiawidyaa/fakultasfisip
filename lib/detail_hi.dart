//detail_hi.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPageHI extends StatelessWidget {
  const DetailPageHI({Key? key}) : super(key: key);
  final String _upnjatimUrl = 'https://hubint.upnjatim.ac.id/';

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
      path: 'hubint@upnjatim.ac.id',
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
          title: Text('Program Studi Hubungan Internasional'),
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
                    'assets/hi.png',
                  ),
                ),
              ),
              ListTile(
                title: Text('Profil'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilProdiHI()),
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
                    image: AssetImage('assets/4.png'),
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
                'Program Studi Hubungan Internasional di UPN "Veteran" Jawa Timur bertujuan untuk menghasilkan lulusan yang memiliki pemahaman mendalam tentang dinamika hubungan antarbangsa dan isu-isu global. Komitmen Program Studi Hubungan Internasional adalah melatih lulusannya agar menjadi ahli dalam menganalisis, merumuskan, dan menerapkan kebijakan luar negeri yang efektif. Sebagai calon diplomat dan ahli hubungan internasional, lulusan Program Studi Hubungan Internasional diarahkan untuk memiliki kemampuan dalam diplomasi, negosiasi, dan mediasi di tingkat internasional. Mereka juga dilatih untuk menjadi pemikir kritis yang dapat mengatasi konflik dan kerjasama antarnegara secara konstruktif. Selain itu, lulusan diharapkan dapat berperan sebagai penghubung lokal dan global (local enabler) dengan memainkan peran sebagai konsultan, analis kebijakan luar negeri, peneliti, komunikator, dan birokrat dalam konteks hubungan internasional.',
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
                      'Program Studi S1 Hubungan Internasional UPN “Veteran” Jawa Timur berada di Fakultas Ilmu Sosial dan Ilmu Politik.',
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

class ProfilProdiHI extends StatelessWidget {
  const ProfilProdiHI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROFIL PROGRAM STUDI HUBUNGAN INTERNASIONAL',
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
                  'assets/profilhi.png',
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
                      'Program Sarjana Hubungan Internasional didirikan pada tanggal 30 September 2011 di bawah Fakultas Ilmu Sosial dan Ilmu Politik berdasarkan Keputusan Menteri Pendidikan Nasional nomor 216/E/O/2011. Di antara beberapa departemen HI di provinsi Jawa Timur, UPNVJT Hubungan Internasional memberikan penekanan unik pada pendekatan globalnya. Walaupun sebagian besar departemen International Relations di Indonesia sering menggunakan perspektif makro untuk menganalisis fenomena global, UPNVJT International Relations bertujuan untuk melihat konteks lokal agar dapat melihat gambaran yang lebih luas.',
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
                      '1. Laboratorium dan Ruang Inventarisasi Hubungan Internasional (LABIRIN). Ruangan multifungsi yang dapat diakses oleh keluarga besar  International Relations UPNVJT. Ini berisi tiga bagian: ruang pemeriksaan, ruang diplomatik, dan ruang server.\n'
                      '2. Perpustakaan mini UPNVJT International Relations juga tersedia di LABIRIN, literaturnya beragam, terutama terbatasnya koleksi buku dan skripsi alumni yang dapat diakses secara gratis bagi mahasiswa Hubungan Internasional.',
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
                      'Karakteristik global yang diterapkan sebagai kurikulum inti Hubungan Internasional ini sejalan dengan visi universitas untuk menerapkan karakter bangsa dan juga bertepatan dengan standar nasional pendidikan tinggi yang baru, yaitu “Kampus Merdeka, Merdeka Belajar” (Bahasa Indonesia: " Kurikulum Merdeka Belajar, Kampus Merdeka") yang dikeluarkan oleh Menteri Pendidikan dan Kebudayaan. Kurikulum baru International Relations juga menyesuaikan dengan kebutuhan untuk menghasilkan sumber daya manusia yang berdaya saing tinggi di era Revolusi Industri 4.0 dan Society 5.0.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
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
          'VISI DAN MISI PROGRAM STUDI HUBUNGAN INTERNASIONAL',
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
                  'assets/visimisihi.png',
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
                      '“Menghasilkan lulusan yang inovatif, berdaya saing internasional dan beridentitas bela negara dalam bidang Hubungan Internasional”',
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
                      '1. Menghasilkan lulusan yang berintegritas, berkepribadian, peka sosial, berkarakter kuat serta memiliki kompetensi keilmuan unggul dan berdaya saing tinggi. Lebih dari itu, beriman dan bertakwa dengan tetap menjunjung tinggi nilai dan semangat Bela Negara (Nasionalisme) yang mempersiapkan diri untuk kepentingan masyarakat, bangsa, dan negara.\n'
                      '2. Mendiseminasikan karya ilmiah, baik artikel ilmiah maupun hasil penelitian di bidang HI. Khususnya, dalam politik keamanan internasional dan hubungan transnasional; yang dapat diimplementasikan pada saat kegiatan pengajaran maupun pengabdian kepada masyarakat.\n'
                      '3. Meningkatkan dan memperkuat berbagai kerjasama dengan komunitas pengambil kebijakan, guna meningkatkan peran dan relevansi kajian HI yang mampu memberikan kontribusi nyata bagi masyarakat, bangsa, dan negara, serta masyarakat dunia.',
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
          'AKREDITASI PROGRAM STUDI HUBUNGAN INTERNASIONAL',
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
                      'assets/akreditasihi.png',
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
                          'Sebagai departemen yang relatif baru, IR diberikan status “B” (Baik) oleh Badan Akreditasi Nasional Perguruan Tinggi (BAN-PT) Badan Akreditasi Nasional Indonesia nomor 1071/1/1/SK/BAN-PT /Akred/S/IV/2019.\n'
                          '\n'
                          'Programme Accreditation of the Bachelor Programme International Relations of the Universitas Pembangunan Nasional "Veteran" Jawa Timur Surabaya, Indonesia. The FIBAA Accreditation and Certification Committee awards its Quality Seal according to its resolution on November 26, 2021. The accreditation is valid until November 25, 2026. It is granted under condition.',
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
          'DOSEN PROGRAM STUDI HUBUNGAN INTERNASIONAL',
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
                  'assets/koorhi.png',
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
                    'DOSEN PROGRAM STUDI HUBUNGAN INTERNASIONAL',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Adiasri Putri Purbantina, Ph.D\n'
                    '2. Megahnanda Alidyan Kresnawati, S.IP., M.IP.\n'
                    '3. Prihandono Wibowo, S.Hub.Int., M.Hub.Int.\n'
                    '4. Resa Rasyidah, S.Hub.Int., M.Hub.Int.\n'
                    '5. Praja Firdaus Nuryananda, S.Hub.Int., M.Hub.Int.\n'
                    '6. Renitha Dwi Hapsari, S.Hub.Int., M.Hub.Int.\n'
                    '7. Ario Bimo Utomo, SIP, MIR.\n'
                    '8. Akhmad Rifky Setya Anugrah, S.IP., M.Si.\n'
                    '9. Palupi Anggraheni, SIP, MA.\n'
                    '10. Yohanes Ivan Adi Kristianto, SIP, MA.\n'
                    '11. Muhammad Dedy Yanuar, SIP, M.Si.\n'
                    '12. Probo Darono Yakti, S.Hub.Int., M.Hub.Int\n'
                    '13. Januari Pratama Nurratri Trisnaningtyas, S.IP., M.MECAS.\n'
                    '14. Pertama Chintya Laksmi Perbawani, S.Hub.Int., M.Hub.Int\n'
                    '15. Muhammad Indrawan Jatmika, SIP, MA.\n'
                    '16. Muchammad Chasif Ascha, S.Sos., M.Si.\n'
                    '17. Dr. Wulan Retno Wigati\n'
                    '18. Paskalis Dimas Prasetyo, S.Sos.\n',
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
              'Prestasi Mahasiswa Hubungan Internasional',
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
              '1. Juara 3 Heroes City League 2023 (Piala Walikota) Basket Putri 5x5 Kelompok Umur 18 Tahun',
        ),
        _buildListItem(
          text:
              '2. Juara 3 Porprov Jatim V111 Taekwondo Kyorugi Senior Putra Under 74 Kg',
        ),
        _buildListItem(
          text: '3. Juara 2 Turnamen FISIP SPARTA 2023 UB',
        ),
        _buildListItem(
          text: '4. Juara 2 Taekwondo Piala Pangdam V Brawijaya',
        ),
        _buildListItem(
          text: '5. Juara 2 Fisipfest 13: Basketball Competition',
        ),
        _buildListItem(
          text:
              '6. Top 5 Council Paper Presentation Pada PNMHII XXXIV Yang Dilaksanakan Di Universitas Udayana, Bali',
        ),
        _buildListItem(
          text:
              '7. Top 7 Council CS Play Pada PNMHII XXXIV Yang Dilaksanakan Di Universitas Udayana, Bali',
        ),
        _buildListItem(
          text:
              '8. International Essay Writing Competition By Economic Innovation On Scientific Competition (EINSTEIN 2022)',
        ),
        _buildListItem(
          text: '9. Putra Putri Duta Peduli AIDS Sidoarjo 2022',
        ),
        _buildListItem(
          text: '10. Juara 3 Fisipfest 13: Badminton Ganda Campuran',
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
          _buildGridItem('assets/preshi1.jpg'),
          _buildGridItem('assets/preshi4.jpg'),
          _buildGridItem('assets/preshi2.jpg'),
          _buildGridItem('assets/preshi3.jpg'),
          _buildGridItem('assets/preshi5.jpg'),
          _buildGridItem('assets/preshi6.jpg'),
          _buildGridItem('assets/preshi7.jpg'),
          _buildGridItem('assets/preshi8.jpg'),
          _buildGridItem('assets/preshi9.jpg'),
          _buildGridItem('assets/preshi10.jpg'),
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
