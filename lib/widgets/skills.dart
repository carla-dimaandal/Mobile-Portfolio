import 'package:carla_tabs/widgets/title.dart';
import 'package:flutter/material.dart';

class SkillsTab extends StatelessWidget {
  const SkillsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      children: [
        SectionTitle(title: 'Technical Skills'),
        SizedBox(height: 20),
        SkillItem(
          icon: Icons.design_services,
          skill: 'Web Design (Figma)',
          level: 'Moderate',
        ),
        SizedBox(height: 12),
        SkillItem(
          icon: Icons.language,
          skill: 'Web Development (HTML, CSS, JavaScript)',
          level: 'Intermediate',
        ),
        SizedBox(height: 12),
        SkillItem(
          icon: Icons.code_outlined,
          skill: 'Programming Languages (Java, Python)',
          level: 'Beginner',
        ),
        SizedBox(height: 20),
        SectionTitle(title: 'Non-Technical Skills'),
        SizedBox(height: 20),
        SkillItem(
          icon: Icons.lightbulb,
          skill: 'Leadership Skills',
          level: 'Advanced',
        ),
        SizedBox(height: 12),
        SkillItem(
          icon: Icons.group,
          skill: 'Teamwork and Collaboration',
          level: 'Advanced',
        ),
        SizedBox(height: 12),
        SkillItem(
          icon: Icons.chat,
          skill: 'Communication Skills',
          level: 'Intermediate',
        ),
        SizedBox(height: 20),
        SectionTitle(title: 'Certifications and Special Training'),
        SizedBox(height: 20),
        CertificationItem(
          icon: Icons.badge,
          certification: 'The Complete Web Developer in 2022',
          issuingOrganization: 'Zero to Mastery',
          date: '2022',
        ),
      ],
    );
  }
}

class SkillItem extends StatelessWidget {
  final IconData icon;
  final String skill;
  final String level;

  const SkillItem({
    Key? key,
    required this.icon,
    required this.skill,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color:Theme.of(context).hintColor),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                skill,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 4),
              Text(
                'Level: $level',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CertificationItem extends StatelessWidget {
  final IconData icon;
  final String certification;
  final String issuingOrganization;
  final String date;

  const CertificationItem({
    Key? key,
    required this.icon,
    required this.certification,
    required this.issuingOrganization,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Theme.of(context).hintColor),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                certification,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                'Issued by: $issuingOrganization',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              SizedBox(height: 4),
              Text(
                'Date: $date',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
