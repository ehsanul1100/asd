import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
