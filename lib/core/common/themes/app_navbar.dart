import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showActions;
  final VoidCallback? onAssessmentTap;
  final VoidCallback? onHomeTap;
  final VoidCallback? onDoctorsTap;

  const AppNavBar({
    super.key,
    this.showActions = false,
    this.onAssessmentTap,
    this.onHomeTap,
    this.onDoctorsTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('ASD Detect'),
      actions: showActions
          ? [
              TextButton(onPressed: onHomeTap, child: const Text('Home')),
              TextButton(
                onPressed: onAssessmentTap,
                child: const Text('Assessments'),
              ),
              TextButton(
                onPressed: onDoctorsTap,
                child: const Text('Find Doctors'),
              ),
              const SizedBox(width: 12),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
