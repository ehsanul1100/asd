import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'outcome_item.dart';

class OutcomeGrid extends StatelessWidget {
  final List<OutcomeItem> items;

  const OutcomeGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        int crossAxisCount = 1;
        if (maxWidth > 1000) {
          crossAxisCount = items.length;
        } else if (maxWidth > 600) {
          crossAxisCount = 2;
        }

        return GridView.builder(
          itemCount: items.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (context, index) => items[index],
        );
      },
    );
  }
}
