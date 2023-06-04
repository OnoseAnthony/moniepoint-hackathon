import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/data.dart';


class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Description:',
          style: theme.primaryTextTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        15.verticalSpace,
        for (var desc in desc)
          Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 5.sp,
                  height: 5.sp,
                  margin: EdgeInsets.only(top: 5.h),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                8.horizontalSpace,
                Expanded(
                  child: Text(
                    desc,
                    style: theme.primaryTextTheme.bodyMedium?.copyWith(
                      color: Colors.black54,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        15.verticalSpace,
        Text(
          'Chat us if there\'s anything you need to know about the product',
          style: theme.primaryTextTheme.bodyMedium?.copyWith(
            color: Colors.black54,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        15.verticalSpace,
        Row(
          children: [
            Text(
              'See more',
              style: theme.primaryTextTheme.bodyMedium?.copyWith(
                color: theme.primaryColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(Icons.arrow_drop_up, color: Colors.grey)
          ],
        ),
        25.verticalSpace,
        const Divider(),
      ],
    );
  }
}
