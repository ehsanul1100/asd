import 'package:asd/core/utils/opacity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gap/gap.dart';

// Sample navigation items (replace with your actual nav items)
const navItems = [
  {'label': 'Home', 'href': '/', 'icon': Icons.home},
  {'label': 'Assessment', 'href': '/assessment', 'icon': Icons.description},
  {'label': 'Doctors', 'href': '/doctors', 'icon': Icons.people},
];

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = GoRouter.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return AppBar(
      backgroundColor: applyOpacity(colorScheme.surface, 0.95),
      elevation: 0,
      title: GestureDetector(
        onTap: () => context.go('/'),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.favorite, color: colorScheme.primary, size: 32.sp),
            Gap(8.w),
            Text(
              'ASD Care',
              style: textTheme.titleLarge?.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
      actions: [
        if (MediaQuery.of(context).size.width > 768)
          Row(
            children: navItems.map((item) {
              final isActive = currentRoute == item['href'];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: TextButton(
                  onPressed: () => context.go(item['href'] as String),
                  style: TextButton.styleFrom(
                    backgroundColor: isActive ? colorScheme.primary : null,
                    foregroundColor: isActive
                        ? colorScheme.onPrimary
                        : colorScheme.onSurface,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(item['icon'] as IconData, size: 16.sp),
                      Gap(8.w),
                      Text(
                        item['label'] as String,
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          )
        else
          IconButton(
            icon: Icon(Icons.menu, size: 24.sp),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.h),
        child: Container(color: colorScheme.outline, height: 1.h),
      ),
    );
  }
}
