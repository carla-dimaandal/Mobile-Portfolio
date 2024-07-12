import 'package:carla_tabs/widgets/title.dart';
import 'package:flutter/material.dart';

class InterestsTab extends StatelessWidget {
  const InterestsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      children: [
        SectionTitle(title: 'Professional Interests'),
        SizedBox(height: 20),
        InterestItem(
          icon: Icons.code,
          interest: 'Web Development',
          description:
              'Interested in building intuitive and innovative websites',
        ),
        SizedBox(height: 12),
        InterestItem(
          icon: Icons.desktop_windows_sharp,
          interest: 'UI/UX Design',
          description:
              'Passionate in building creative designs that are user-friendly and pleasant to the eyes',
        ),
        SizedBox(height: 12),
        InterestItem(
          icon: Icons.create_sharp,
          interest: 'Writing',
          description:
              'Fascinated by different literatures, books, and even academic articles',
        ),
        SizedBox(height: 20),
        SectionTitle(title: 'Specializations'),
        SizedBox(height: 20),
        InterestItem(
          icon: Icons.analytics,
          interest: 'Business Analytics',
          description:
              'Experience in database management, and driving insights from business data',
        ),
        SizedBox(height: 12),
        InterestItem(
          icon: Icons.web,
          interest: 'Web Development',
          description:
              'Interested in front-end technologies such as HTML, CSS, and JavaScript.',
        ),
        SizedBox(height: 12),
        InterestItem(
          icon: Icons.featured_video,
          interest: 'Video Editing',
          description:
              'Knowledgeable in different video editing platforms such as Adobe Premiere, and Filmora',
        ),
        SizedBox(height: 20),
        SectionTitle(title: 'Research Areas'),
        SizedBox(height: 20),
        InterestItem(
          icon: Icons.book,
          interest: 'Artificial Intelligence',
          description:
              'Researching applications of artificial intelligence in innovative systems.',
        ),
        SizedBox(height: 12),
        InterestItem(
          icon: Icons.science,
          interest: 'Machine Learning',
          description:
              'Exploring machine learning models for predictive analytics.',
        ),
        SizedBox(height: 20),
        SectionTitle(title: 'Notable Projects and Publications'),
        SizedBox(height: 20),
        ProjectItem(
          icon: Icons.work,
          title: 'Exploring the Recyclability of Mango Leaves',
          description:
              'Created a sturdy and writable paper out of Mango Leaves Fibers',
        ),
      ],
    );
  }
}

class InterestItem extends StatelessWidget {
  final IconData icon;
  final String interest;
  final String description;

  const InterestItem({
    Key? key,
    required this.icon,
    required this.interest,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color:Theme.of(context).hintColor),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                interest,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProjectItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ProjectItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color:Theme.of(context).hintColor),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PublicationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const PublicationItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
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
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
