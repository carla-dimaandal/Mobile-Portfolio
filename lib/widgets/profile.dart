import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 4, // Add elevation for a shadow effect
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30), // Splash color
            hoverColor: Theme.of(context).primaryColor.withAlpha(30), // Hover color
            onTap: () {
              // Handle tap if needed
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ProfileContent(),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min, // Ensure column takes minimum vertical space
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/id.jpg'), // Replace with your image path
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Carla Francesca Y. Dimaandal',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            '20 Years Old',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Container(
            constraints: BoxConstraints(maxWidth: 300), // Limit text width
            child: Text(
              'Hi, I am Carla, a 20-year-old Information Technology student with a passion for coding, designing, and exploring the endless possibilities of technology.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
