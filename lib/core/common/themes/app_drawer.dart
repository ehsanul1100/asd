import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final VoidCallback? onHomeTap;
  final VoidCallback? onAssessmentTap;
  final VoidCallback? onDoctorsTap;

  const AppDrawer({
    super.key,
    this.onHomeTap,
    this.onAssessmentTap,
    this.onDoctorsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: const Text(
              'ASD Detect',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          ListTile(title: const Text('Home'), onTap: onHomeTap),
          ListTile(title: const Text('Assessments'), onTap: onAssessmentTap),
          ListTile(title: const Text('Find Doctors'), onTap: onDoctorsTap),
        ],
      ),
    );
  }
}
