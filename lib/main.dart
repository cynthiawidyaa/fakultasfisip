import 'package:flutter/material.dart';
import 'package:fakultasfisip/detail_ilkom.dart';
import 'package:fakultasfisip/detail_adpub.dart';
import 'package:fakultasfisip/detail_adbis.dart';
import 'package:fakultasfisip/detail_hi.dart';
import 'package:fakultasfisip/detail_pariwisata.dart';
import 'package:fakultasfisip/prodi.dart';
import 'package:fakultasfisip/profile.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROFIL FAKULTAS ILMU SOSIAL DAN ILMU POLITIK',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(
        title: 'PROFIL FAKULTAS ILMU SOSIAL DAN ILMU POLITIK',
      ),
      routes: {
        'detail_ilkom.dart': (context) => DetailPageIlkom(),
        'detail_adpub.dart': (context) => DetailPageAdpub(),
        'detail_adbis.dart': (context) => DetailPageAdbis(),
        'detail_page_hi.dart': (context) => DetailPageHI(),
        'detail_pariwisata.dart': (context) => DetailPagePariwisata(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> routeNames = [
    'detail_ilkom.dart',
    'detail_adpub.dart',
    'detail_adbis.dart',
    'detail_page_hi.dart',
    'detail_pariwisata.dart',
  ];
  bool _showProfile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FlexibleSpaceBar(
              centerTitle: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.language,
                        color: Colors.black,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch('https://fisip.upnjatim.ac.id/');
                        },
                        child: Text(
                          ' https://fisip.upnjatim.ac.id/',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      GestureDetector(
                        onTap: () {
                          launch('mailto:example@fisip.upnjatim.ac.id');
                        },
                        child: Text(
                          ' fisip@upnjatim.ac.id',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.school,
                color: Colors.black,
                size: 28,
              ),
              SizedBox(width: 8),
              Text(
                'PROFIL FAKULTAS ILMU SOSIAL DAN ILMU POLITIK',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'UPN "VETERAN" JAWA TIMUR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Keberadaan Fakultas Ilmu Sosial dan Ilmu Politik diawali dengan berdirinya Fakultas Ilmu Administrasi Negara dan Administrasi Niaga. Fakultas Ilmu Sosial dan Ilmu Politik memiliki beberapa Program Studi yaitu :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Prodi.samples.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    if (index < routeNames.length) {
                      Navigator.pushNamed(
                        context,
                        routeNames[index],
                      );
                    } else {}
                  },
                  child: buildProdiCard(Prodi.samples[index]),
                );
              },
            ),
          ),
          if (_showProfile)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            Profile profile = Profile(
                              name: 'Cynthia Widya Lestari',
                              imageUrl: 'assets/cynthia.jpeg',
                              birthPlace: 'Sidoarjo',
                              birthDate: '21 Juli 2004',
                              address:
                                  'Desa Medalem, Kec.Tulangan, Kab.Sidoarjo',
                              phoneNumber: '085233671571',
                              email: '22082010045@student.upnjatim.ac.id',
                              githubUrl: 'https://github.com/cynthiawidyaa',
                              educationHistory: 'SD Negeri 1 Medalem\n'
                                  'SMP Negeri 1 Tulangan\n'
                                  'SMA Negeri 1 Wonoayu',
                              awards:
                                  'Finalis Lomba UI/UX 2023 T-Days FTI #12 Universitas Ahmad Dahlan, D.I.Yogyakarta\n'
                                  'Finalis Lomba UI/UX 2024 Fasilkom Fest UPN Jawa Timur, Surabaya',
                            );
                            return ProfileDetail(profile: profile);
                          },
                        ),
                      );
                    },
                    child: ProfileCard(
                      imageUrl: 'assets/cynthia.jpeg',
                      name: 'Cynthia Widya',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            Profile profile = Profile(
                              name: 'Marisca Amanda Hidayat',
                              imageUrl: 'assets/marisca.jpeg',
                              birthPlace: 'Magetan',
                              birthDate: '06 November 2003',
                              address: 'Jl. Bibis Tama III-A/1-A',
                              phoneNumber: '085645641417',
                              email: '22082010065@student.upnjatim.ac.id',
                              githubUrl: 'https://github.com/Marisca06',
                              educationHistory: 'SD Negeri Sambirobyong\n'
                                  'SMP Negeri 1 Magetan\n'
                                  'SMA Negeri 12 Surabaya',
                              awards:
                                  'Juara 2 Lomba UI/UX 2023 T-Days FTI #12 Universitas Ahmad Dahlan, D.I.Yogyakarta\n'
                                  'Finalis Lomba UI/UX 2023 DIESNAT SI ITASE 5.0 Institut Teknologi Telkom Purwokerto\n'
                                  'Semifinalis Lomba UI/UX 2023 X-PROJECT 9.0 Informatic Championship',
                            );
                            return ProfileDetail(profile: profile);
                          },
                        ),
                      );
                    },
                    child: ProfileCard(
                      imageUrl: 'assets/marisca.jpeg',
                      name: 'Marisca Amanda',
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _showProfile = !_showProfile;
              });
            },
            child: Text(_showProfile ? 'Sembunyikan Profil' : 'Lihat Profil'),
          ),
        ),
      ),
    );
  }

  Widget buildProdiCard(Prodi prodi) {
    return Card(
      elevation: 2.0,
      color: Colors.yellow[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image(image: AssetImage(prodi.imageUrl)),
            ),
            SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const ProfileCard({Key? key, required this.imageUrl, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
