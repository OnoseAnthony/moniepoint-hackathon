import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_hackathon/common/constants/colors.dart';

import '../common/constants/data.dart';
import '../main.dart';

class Banners extends StatelessWidget {
  const Banners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
      height: 300.h,
      width: size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(
          parent: ClampingScrollPhysics(),
        ),
        children: banner
            .map((e) => Container(
                  width: size.width,
                  height: 300.h,
                  color: e['color'] as Color,
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    bottom: 16.w,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '# ${e['tag']}',
                              style: theme.primaryTextTheme.bodySmall?.copyWith(
                                color: AppColors.black,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            3.verticalSpace,
                            Text(
                              '${e['large']}',
                              style: theme.primaryTextTheme.displayLarge?.copyWith(
                                color: AppColors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            3.verticalSpace,
                            Text(
                              '${e['small']}',
                              style: theme.primaryTextTheme.bodySmall?.copyWith(
                                color: AppColors.black,
                                fontSize: 8.sp,
                              ),
                            ),
                            10.verticalSpace,
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 8.h,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFF2B2D41),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Text(
                                '${e['button']}',
                                style: theme.primaryTextTheme.bodySmall?.copyWith(
                                  color: AppColors.white,
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(e['image'] as String),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
