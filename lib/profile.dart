import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile {
  final String name;
  final String imageUrl;
  final String birthPlace;
  final String birthDate;
  final String address;
  final String phoneNumber;
  final String email;
  final String githubUrl;
  final String educationHistory;
  final String awards;

  Profile({
    required this.name,
    required this.imageUrl,
    required this.birthPlace,
    required this.birthDate,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.githubUrl,
    required this.educationHistory,
    required this.awards,
  });
}

class ProfileDetail extends StatelessWidget {
  final Profile profile;

  const ProfileDetail({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profile.name),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 3.0,
                  ),
                ),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(profile.imageUrl),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            _buildProfileColumn(Icons.person, 'Nama Lengkap', profile.name),
            _buildProfileColumn(
                Icons.place, 'Tempat Lahir', profile.birthPlace),
            _buildProfileColumn(
                Icons.calendar_today, 'Tanggal Lahir', profile.birthDate),
            _buildProfileColumn(Icons.location_on, 'Alamat', profile.address),
            _buildProfileColumn(
                Icons.phone, 'Nomor Telepon', profile.phoneNumber),
            _buildProfileColumn(Icons.email, 'Email', profile.email),
            _buildClickableProfileColumn(
                Icons.link, 'Github URL', profile.githubUrl),
            _buildProfileColumn(
                Icons.school, 'Riwayat Pendidikan', profile.educationHistory),
            _buildProfileColumn(Icons.star, 'Penghargaan', profile.awards),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileColumn(IconData icon, String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 24.0,
            color: Colors.blue,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  content,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClickableProfileColumn(
      IconData icon, String title, String content) {
    return GestureDetector(
      onTap: () {
        _launchURL(content);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 24.0,
              color: Colors.blue,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    content,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
