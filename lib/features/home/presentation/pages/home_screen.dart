import 'package:asd/features/assessment/presentation/pages/assessment_screen.dart';
import 'package:asd/features/home/presentation/widgets/info_section.dart';
import 'package:asd/features/home/presentation/widgets/outcome_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const HomeScreen());
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
                onPressed: () {
                  Navigator.push(context, AssessmentScreen.route());
                },
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
            onTap: () => Navigator.push(context, AssessmentScreen.route()),
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
          title: 'Early Detection for Better Outcomes',
          description:
              'Advanced AI-powered autism spectrum disorder detection using validated AQ-10 questionnaires and image analysis. Connect with qualified professionals across Bangladesh.',
          image: Card(
            elevation: 6.r,
            child: Image.asset('assets/images/brain_model.webp', width: 150.w),
          ),
          isWeb: isWeb,
        ),
        _buildBetterOutcomes(isWeb),
        InfoSection(
          title: 'Advancing Autism Detection in Bangladesh',
          description:
              "Our mission is to provide accessible, accurate, and culturally appropriate tools for autism detection in Bangladesh.\n\nUsing evidence-based assessment methods and cutting-edge machine learning technology, we help families understand their children's developmental patterns and connect them with qualified healthcare professionals.",
          isWeb: isWeb,
          image: Card(
            elevation: 6.r,
            child: Image.asset('assets/images/desk.jpg', width: 150.w),
          ),
        ),
        _buildFooter(),
      ],
    );
  }

  Widget _buildBetterOutcomes(bool isWeb) {
    final items = [
      OutcomeItem(
        value: 'AQ-10 Questionnaires',
        label:
            'Age-specific validated questionnaires for toddlers, children, adolescents, and adults with ML-powered analysis',
        icon: Icons.checklist,
      ),
      OutcomeItem(
        value: 'Image Analysis',
        label:
            'Advanced computer vision models analyze behavioral patterns and facial expressions for additional insights.',
        icon: Icons.camera_alt,
      ),
      OutcomeItem(
        value: 'Expert Consultation',
        label:
            'Connect with qualified professionals across all divisions of Bangladesh through video calls and chat.',
        icon: Icons.people,
      ),
    ];

    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Comprehensive ASD Detection & Support',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Gap(10.h),
          Text(
            'Our platform combines validated assessment tools with cutting-edge AI technology to provide accurate screening and connect families with professional care.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 16.h),
          isWeb
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: items
                      .map(
                        (item) => Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: item,
                          ),
                        ),
                      )
                      .toList(),
                )
              : Column(
                  children: items
                      .map(
                        (item) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: item,
                        ),
                      )
                      .toList(),
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
            '© 2025 ASD Detect. All rights reserved.',
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

// Reusable OutcomeItem Widget
