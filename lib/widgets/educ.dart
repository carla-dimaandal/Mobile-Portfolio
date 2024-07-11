import 'package:flutter/material.dart';

class EducTab extends StatelessWidget {
  const EducTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      children: [
        SectionTitle(title: 'Education'),
        SizedBox(height: 20),
        EducationalItem(
          icon: Icons.school,
          course: 'Bachelor of Science in Information Technology',
          institution: 'Batangas State University',
          date: '2021-2025',
        ),
        SizedBox(height: 20),
        EducationalItem(
          icon: Icons.school,
          course: 'Senior High School',
          institution: 'St. Bridget College',
          date: '2019 - 2021',
        ),
        SizedBox(height: 20),
        EducationalItem(
          icon: Icons.school,
          course: 'Junior High School',
          institution: 'St. Bridget College',
          date: '2015-2019',
        ),
        SizedBox(height: 20),
        EducationalItem(
          icon: Icons.school,
          course: 'Elementary School',
          institution: 'St. Bridget College',
          date: '2010-2015',
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class EducationalItem extends StatelessWidget {
  final IconData icon;
  final String course;
  final String institution;
  final String date;

  const EducationalItem({
    Key? key,
    required this.icon,
    required this.course,
    required this.institution,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Theme.of(context).primaryColor, size: 36),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                institution,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 8),
              Text(
                date,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
