import 'package:asd/features/assessment/domain/entities/age_group.dart';
import 'package:asd/features/assessment/presentation/widgets/assessment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:asd/features/home/presentation/widgets/custom_navigation_var.dart'
    as nav;

class AssessmentScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const AssessmentScreen());
  const AssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final List<AgeGroup> ageGroups = [
      AgeGroup(
        id: 'toddlers',
        name: 'Toddlers',
        ageRange: 'Ages 18 months - 3 years',
        description: 'Parent/caregiver completion • 10 questions • 5-8 minutes',
        icon: '👶',
        color: colorScheme.primary,
      ),
      AgeGroup(
        id: 'children',
        name: 'Children',
        ageRange: 'Ages 4 - 11 years',
        description: 'Parent/caregiver completion • 10 questions • 5-8 minutes',
        icon: '🧒',
        color: colorScheme.secondary,
      ),
      AgeGroup(
        id: 'adolescents',
        name: 'Adolescents',
        ageRange: 'Ages 12 - 17 years',
        description: 'Self or parent completion • 10 questions • 5-8 minutes',
        icon: '🎓',
        color: colorScheme.tertiary,
      ),
      AgeGroup(
        id: 'adults',
        name: 'Adults',
        ageRange: 'Ages 18+ years',
        description: 'Self completion • 10 questions • 5-8 minutes',
        icon: '🧑',
        color: colorScheme.primaryContainer,
      ),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: colorScheme.surface,
          padding: EdgeInsets.symmetric(vertical: 80.h),
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 1152.w), // max-w-7xl
              child: Column(
                children: [
                  Text(
                    'Choose Your Assessment',
                    style: textTheme.headlineLarge?.copyWith(
                      fontSize: MediaQuery.of(context).size.width > 768
                          ? 36.sp
                          : 30.sp,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Gap(16.h),
                  Text(
                    'Select the appropriate age group for accurate screening using our validated AQ-10 questionnaires.',
                    style: textTheme.titleLarge?.copyWith(
                      fontSize: 20.sp,
                      color: colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Gap(64.h),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.width > 1024
                          ? 4
                          : MediaQuery.of(context).size.width > 768
                          ? 2
                          : 1,
                      crossAxisSpacing: 24.w,
                      mainAxisSpacing: 24.h,
                      childAspectRatio: 1.2,
                    ),
                    itemCount: ageGroups.length,
                    itemBuilder: (context, index) =>
                        AssessmentCard(ageGroup: ageGroups[index]),
                  ),
                  Gap(48.h),
                  //const ImageUpload(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
