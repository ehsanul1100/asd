import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Mobile design reference
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        final isWeb = MediaQuery.of(context).size.width > 600;
        return Scaffold(
          appBar: _buildAppBar(isWeb),
          drawer: isWeb ? null : _buildDrawer(),
          body: _buildBody(isWeb),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(bool isWeb) {
    return AppBar(
      title: Text('ASD Detect', style: GoogleFonts.montserrat()),
      elevation: Theme.of(context).appBarTheme.elevation,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      actions: isWeb
          ? [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Home',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Assessments',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Find Doctors',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              SizedBox(width: 16.w),
            ]
          : null,
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Text(
              'ASD Detect',
              style: TextStyle(color: Colors.white, fontSize: 20.sp),
            ),
          ),
          ListTile(title: Text('Home'), onTap: () => Navigator.pop(context)),
          ListTile(
            title: Text('Assessments'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Find Doctors'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(bool isWeb) {
    return ListView(
      children: [
        InfoSection(
          title: 'Comprehensive ASD Detection & Support',
          description:
              'Empowering families with AI-powered autism detection and connecting them with qualified healthcare professionals across Bangladesh.',
          image: Image.asset(
            'assets/images/laptop_stethoscope.png',
            width: 200.w,
          ),
          isWeb: isWeb,
        ),
        _buildBetterOutcomes(),
        InfoSection(
          title: 'Advancing Autism Detection in Bangladesh',
          description:
              'Our mission is to provide accessible, accurate, and culturally appropriate tools for autism detection in Bangladesh.',
          isWeb: isWeb,
        ),
        _buildFooter(),
      ],
    );
  }

  Widget _buildBetterOutcomes() {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Better Outcomes',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 16.h),
          Wrap(
            spacing: 16.w,
            runSpacing: 16.h,
            children: [
              OutcomeItem(
                value: '98%',
                label: 'accuracy',
                icon: Icons.check_circle,
              ),
              OutcomeItem(
                value: '500+',
                label: 'qualified doctors',
                icon: Icons.people,
              ),
              OutcomeItem(
                value: 'AI-powered',
                label: 'detection',
                icon: Icons.computer,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: EdgeInsets.all(16.w),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Text(
            '© 2024 ASD Detect. All rights reserved.',
            style: TextStyle(color: Colors.white, fontSize: 12.sp),
          ),
          SizedBox(height: 8.h),
          Text(
            'Medical Disclaimer: This app is not a substitute for professional medical advice.',
            style: TextStyle(color: Colors.white, fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}

// Reusable InfoSection Widget
class InfoSection extends StatelessWidget {
  final String title;
  final String description;
  final Widget? image;
  final bool isWeb;

  const InfoSection({
    super.key,
    required this.title,
    required this.description,
    this.image,
    this.isWeb = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: isWeb && image != null
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.w),
                image!,
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headlineSmall),
                SizedBox(height: 8.h),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                if (image != null)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: image,
                  ),
              ],
            ),
    );
  }
}

// Reusable OutcomeItem Widget
class OutcomeItem extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;

  const OutcomeItem({
    super.key,
    required this.value,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 48.w, color: Theme.of(context).colorScheme.primary),
        SizedBox(height: 8.h),
        Text(value, style: Theme.of(context).textTheme.headlineSmall),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
