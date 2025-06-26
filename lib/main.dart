import 'package:asd/core/common/themes/app_theme.dart';
import 'package:asd/features/assessment/presentation/pages/assessment_screen.dart';
import 'package:asd/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 900), // Reference design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'ASD Detect',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: ThemeMode.system,
          routerConfig: _router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/assessment',
        builder: (context, state) => const AssessmentScreen(),
      ),
      // GoRoute(
      //   path: '/assessment/:ageGroup',
      //   builder: (context, state) {
      //     final ageGroup = state.pathParameters['ageGroup']!;
      //     return AssessmentFormScreen(ageGroup: ageGroup);
      //   },
      // ),
      // GoRoute(
      //   path: '/doctors',
      //   builder: (context, state) => const DoctorDirectoryScreen(),
      // ),
      // GoRoute(
      //   path: '/consultation/:doctorId',
      //   builder: (context, state) {
      //     final doctorId = state.pathParameters['doctorId']!;
      //     return ConsultationScreen(doctorId: doctorId);
      //   },
      // ),
      // GoRoute(
      //   path: '/results/:sessionId',
      //   builder: (context, state) {
      //     final sessionId = state.pathParameters['sessionId']!;
      //     return ResultsScreen(sessionId: sessionId);
      //   },
      // ),
      // GoRoute(
      //   path: '/not-found',
      //   builder: (context, state) => const NotFoundScreen(),
      // ),
    ],
    // errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
