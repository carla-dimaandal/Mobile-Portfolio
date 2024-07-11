import 'package:flutter/material.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
      children: [
        SectionTitle(title: 'Email'),
        ContactItem(
          icon: Icons.mail,
          text: 'carlafrancescadimaandal29@gmail.com',
        ),
        SizedBox(height: 12),

        SectionTitle(title: 'Phone Number'),
        ContactItem(
          icon: Icons.phone,
          text: '+9196916451',
        ),
        SizedBox(height: 12),

        SectionTitle(title: 'Address'),
        ContactItem(
          icon: Icons.location_on,
          text: 'Maselang St, Batangas City',
        ),
        SizedBox(height: 12),

        SectionTitle(title: 'Social Media'),
        ContactItem(
          icon: Icons.link_outlined,
          text: 'instagram.com/carlafrncsca',
        ),
        ContactItem(
          icon: Icons.link_outlined,
          text: 'github.com/in/carla-dimaandal',
        ),
        ContactItem(
          icon: Icons.link_outlined,
          text: 'twitter.com/carla_dimaandal',
        ),
        SizedBox(height: 20), // Add some extra space at the end
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  const ContactItem({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).hintColor, size: 24),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
