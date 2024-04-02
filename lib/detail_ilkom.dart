//detail_ilkom.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPageIlkom extends StatelessWidget {
  const DetailPageIlkom({Key? key}) : super(key: key);

  void _openUPNJatimUrl() async {
    final String _upnjatimUrl = 'https://ilkom.upnjatim.ac.id/#';

    if (await canLaunch(_upnjatimUrl)) {
      await launch(_upnjatimUrl);
    } else {
      throw 'Could not launch $_upnjatimUrl';
    }
  }

  void _sendEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'ilmu.komunikasi@upnjatim.ac.id',
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
          title: Text('Program Studi Ilmu Komunikasi'),
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
                    'assets/ilkom.png',
                  ),
                ),
              ),
              ListTile(
                title: Text('Profil'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilProdiIlkom()),
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
                    image: AssetImage('assets/1.png'),
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
                'Program Studi Ilmu Komunikasi di UPN "Veteran" Jawa Timur bertujuan untuk melatih lulusannya agar menjadi ahli dalam bidang komunikasi dan media. Komitmen Program Studi Ilmu Komunikasi adalah menghasilkan lulusan yang mampu menjadi pemimpin komunikasi yang efektif di berbagai bidang industri dan sektor, termasuk media massa, periklanan, hubungan masyarakat, dan komunikasi korporat. Sebagai pemimpin komunikasi, lulusan Program Studi Ilmu Komunikasi diarahkan untuk mengembangkan keterampilan dalam merencanakan, mengelola, dan mengevaluasi strategi komunikasi yang efektif untuk memenuhi kebutuhan klien atau organisasi. Selain itu, mereka juga dilatih untuk menjadi analis yang cerdas dalam memahami tren komunikasi terkini dan menerapkannya dalam konteks praktis. Dengan demikian, lulusan Program Studi Ilmu Komunikasi diharapkan dapat menjadi agen perubahan yang positif dalam berbagai aspek masyarakat melalui penerapan prinsip-prinsip komunikasi yang berkelanjutan dan beretika.',
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
                      'Program Studi S1 Ilmu Komunikasi UPN “Veteran” Jawa Timur berada di Fakultas Ilmu Sosial dan Ilmu Politik.',
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

class ProfilProdiIlkom extends StatelessWidget {
  const ProfilProdiIlkom({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROFIL PROGRAM STUDI ILMU KOMUNIKASI',
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
                  'assets/profililkom.png',
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
                      'Program Studi Ilmu Komunikasi berdiri pada 27 April 1994 dengan SK Pendirian Program Studi Nomor. Kep/09/IV/1994. Pada tahun 1994 Universitas Pembangunan Nasional “Veteran” Jawa Timur berada dalam naungan Departemen Pertahanan dan Keamanan dengan status Negeri Kedinasan. Jurusan Ilmu Komunikasi pada saat itu berada di dalam Fakultas Ilmu Administrasi yang kemudian berubah menjadi Fakultas Ilmu Sosial dan Ilmu Politik sejak tanggal 6 Mei 2005.',
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
                      'Pemberlakuan Kurikulum Merdeka pada pertengahan tahun 2020 olehKemendikbud juga mengakibatkan adanya penyesuaian terhadap Kurikulum Yang ada. Redesain kurikulum merupakan upaya Prodi Ilmu Komunikasi UPNV Jatim untuk memperkuat positioning prodi serta untuk menjawab pelaksanaan kurikulum merdeka.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
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
                      'Dalam Program Studi Ilmu Komunikasi  menyediakan fasilitas berupa:\n'
                      '1. Kalab Film, Fotografi, dan Iklan terdapat: Laboratorium Film, Laboratorium Fotografi, Laboratorium Iklan.\n'
                      '2. Kalab Media Digital, TV, dan Radio terdapat: Laboratorium Cyber Public Relations, Laboratorium Televisi, Laboratorium Radio.\n'
                      '3. Laboran',
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
          'VISI DAN MISI PROGRAM STUDI ILMU KOMUNIKASI',
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
                  'assets/visimisiilkom.png',
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
                      '“Menjadi Program Studi Ilmu Komunikasi unggul dalam mencetak sarjana yang kompeten dalam bidang penyiaran,jurnalistik, hubungan masyarakat, periklanan dan dijiwai oleh nilai-nilai Bela Negara di wilayah Indonesia pada tahun 2022"',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
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
                      '1. Mengembangkan pendidikan ilmu komunikasi dengan kurikulum yang adaptif, pembelajaran yang inovatif, didukung ketersediaan sarana/prasarana yang memadai dan SDM yang andal.\n'
                      '2. Membangun iklim kelembagaan yang kondusif dalam memfasilitasi munculnya temuan-temuan dan penelitian-penelitian mutakhir bidang komunikasi yang memberi manfaat bagi pengembangan masyarakat.\n'
                      '3. Menghasilkan lulusan yang menguasai aspek konseptual dan teknis bidang ilmu komunikasi, mandiri, memiliki integritas, dan mampu bersaing di pasar global.\n'
                      '4. Menanamkan nilai-nilai spiritual, disiplin, kejuangan, kreativitas pada civitas akademika.',
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
          'AKREDITASI PROGRAM STUDI ILMU KOMUNIKASI',
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
                      'assets/akreditasiilkom.png',
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
                          'Program Studi Ilmu Komunikasi UPN "Veteran" Jawa Timur telah mendapatkan akreditasi A dari BAN-PT (Badan Akreditasi Nasional - Perguruan Tinggi), menunjukkan kualitas pendidikan yang baik dan sesuai dengan standar nasional.\n'
                          '\n'
                          'Programme Accreditation of the Bachelor Programme Communication Science of the Universitas Pembangunan Nasional "Veteran" Jawa Timur Surabaya, Indonesia. The FIBAA Accreditation and Certification Committee awards its Quality Seal according to its resolution on November 26, 2021. The accreditation is valid until November 25, 2026. It is granted under condition.',
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
          'DOSEN PROGRAM STUDI ILMU KOMUNIKASI',
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
                  'assets/koorilkom.png',
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
                    'DOSEN PROGRAM STUDI ILMU KOMUNIKASI',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Catur Suratnoaji, Dr, MSi.\n'
                    '2. Didik Tranggono, Ir, M.Si\n'
                    '3. Yuli Candrasari, Dr., S.Sos, M.Si\n'
                    '4. Yudiana Indriastuti, Dr., S.Sos.M.Si\n'
                    '5. Aulia Rachmawati, Dr., S.Sos.M.Si\n'
                    '6. Sumardjijati, Dra.,M.Si\n'
                    '7. Saifuddin Zuhri. Drs, M.Si\n'
                    '8. Dyva Claretta, Dra, M.Si\n'
                    '9. Juwito, S.Sos, M.Si\n'
                    '10. Kusnarto, Drs, M.Si.\n'
                    '11. Herlina Suksmawati, Dra., M.Si.\n'
                    '12. Diana Amalia, Dra, M.Si\n'
                    '13. Irwan Dwi Arianto, S.Sos, M. I. Kom\n'
                    '14. Zainal Abidin, A. S.Sos. M.Si, M.Ed.\n'
                    '15. Syafrida Nur Rahmi, S.Sos, M.Med.Kom\n'
                    '16. Syifa Syarifah Alawiyah.S.Sos, M. Commun.\n'
                    '17. Heidy Arviani, S. Sos, M. A.\n'
                    '18. Ahmad Zamzamy, S. Sos, M. Med. Kom\n'
                    '19. Ririn Puspita T, S.Sos, M. Med. Kom\n'
                    '20. Ade Kusuma, S. Sos, M.Med.Kom\n'
                    '21. Fikry Zahria Emeraldien, S.Ikom. M.A.\n'
                    '22. Roziana Febrianita, S.Sos, M.A\n',
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
              'Prestasi Mahasiswa Ilmu Komunikasi',
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
              '1. Top 8 dan Juara 2 TOP S SDGs Idea Innovation Presentation in Kuala Lumpur',
        ),
        _buildListItem(
          text:
              '2. Juara 1 Voice Over Harmoni Forfest 2023 Tingkat NASIONAL Forum Mahasiswa Bidikmisi dan KIP-K UIN Raden Mas Said Surakarta',
        ),
        _buildListItem(
          text: '3. Top 24 Miss Supranational 2023',
        ),
        _buildListItem(
          text:
              '4. Juara 1 Kejuaraan nasional tennis lapangan antar mahasisa perguruan tinggi SEMAR OPEN 1 2023',
        ),
        _buildListItem(
          text:
              '5. Best Presenter The 5th Indonesian Scholars Scientific Summit (13S) Conference 2023. Tingkat INTERNASIONAL Perhimpunan Pelajar Indonesia (PPI) Taiwan',
        ),
        _buildListItem(
          text:
              '6. Juara 2 OlymPR atau PR Campaign Epicentrum Universitas Padjadjaran',
        ),
        _buildListItem(
          text:
              '7. Juara 2 FIGHTING PIBU 56KG SENIOR PA. Tingkat PROVINSI FORDA 1 JAWA TIMUR',
        ),
        _buildListItem(
          text:
              '8. Juara 2 Lomba Arjuna. Kategori Homeless Media Festival Ajisaka 2023, Korps Mahasiswa Komunikasi Universitas Gadjah Mada',
        ),
        _buildListItem(
          text: '9. Juara 2 PR Vaganza Pekan Komunikasi Universitas Indonesia',
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
          _buildGridItem('assets/presilkom1.jpg'),
          _buildGridItem('assets/presilkom2.jpg'),
          _buildGridItem('assets/presilkom3.jpg'),
          _buildGridItem('assets/presilkom4.jpg'),
          _buildGridItem('assets/presilkom5.jpg'),
          _buildGridItem('assets/presilkom6.jpg'),
          _buildGridItem('assets/presilkom7.jpg'),
          _buildGridItem('assets/presilkom8.jpg'),
          _buildGridItem('assets/presilkom9.jpg'),
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
