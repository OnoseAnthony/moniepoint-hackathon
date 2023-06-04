import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/typicons_icons.dart';

import '../state/app_state/models/product.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Icon(
              Icons.store,
              color: Colors.grey,
              size: 18.sp,
            ),
            8.horizontalSpace,
            Text(
              'Loremispum.id',
              style: theme.primaryTextTheme.bodySmall?.copyWith(
                color: Colors.grey,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
        10.verticalSpace,
        Text(
          product.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: theme.primaryTextTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        15.verticalSpace,
        Row(
          children: [
            Icon(
              Typicons.star_filled,
              color: Colors.amber,
              size: 15.sp,
            ),
            8.horizontalSpace,
            Text(
              '4.9 Rating',
              style: theme.primaryTextTheme.bodySmall?.copyWith(
                color: Colors.black54,
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Container(
              width: 5.w,
              height: 5.h,
              decoration: const BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
              ),
            ),
            const Spacer(),
            Text(
              '2.3k+ Reviews',
              style: theme.primaryTextTheme.bodySmall?.copyWith(
                color: Colors.black54,
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Container(
              width: 5.w,
              height: 5.h,
              decoration: const BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
              ),
            ),
            const Spacer(),
            Text(
              '2.9k+ Sold',
              style: theme.primaryTextTheme.bodySmall?.copyWith(
                color: Colors.black54,
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
