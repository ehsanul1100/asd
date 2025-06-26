import 'package:asd/features/assessment/domain/entities/age_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AssessmentCard extends StatelessWidget {
  final AgeGroup ageGroup;

  const AssessmentCard({super.key, required this.ageGroup});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(color: colorScheme.outline),
      ),
      child: InkWell(
        onTap: () => context.push('/assessment/${ageGroup.id}'),
        borderRadius: BorderRadius.circular(12.r),
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                  color: ageGroup.color,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(ageGroup.icon, style: TextStyle(fontSize: 24.sp)),
                ),
              ),
              Gap(24.h),
              Text(
                ageGroup.name,
                style: textTheme.titleLarge?.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
              Gap(8.h),
              Text(
                ageGroup.ageRange,
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 16.sp,
                  color: colorScheme.primary,
                ),
              ),
              Gap(16.h),
              Text(
                ageGroup.description,
                style: textTheme.bodyMedium?.copyWith(
                  fontSize: 14.sp,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              Gap(16.h),
              TextButton(
                onPressed: () => context.push('/assessment/${ageGroup.id}'),
                style: TextButton.styleFrom(
                  foregroundColor: colorScheme.primary,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Start Assessment', style: TextStyle(fontSize: 14.sp)),
                    Gap(4.w),
                    Icon(Icons.arrow_right, size: 16.sp),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
