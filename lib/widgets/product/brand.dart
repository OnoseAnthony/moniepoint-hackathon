import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandCategory extends StatelessWidget {
  const BrandCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Brand:',
                    style: theme.primaryTextTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: Text(
                      'Lorem Ispum',
                      style: theme.primaryTextTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            15.horizontalSpace,
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Color:',
                    style: theme.primaryTextTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: Text(
                      'Aprikot',
                      style: theme.primaryTextTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        12.verticalSpace,
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Category:',
                    style: theme.primaryTextTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: Text(
                      'Casual shirt',
                      style: theme.primaryTextTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            15.horizontalSpace,
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Material:',
                    style: theme.primaryTextTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: Text(
                      'Polyster',
                      style: theme.primaryTextTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        12.verticalSpace,
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Condition:',
                    style: theme.primaryTextTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: Text(
                      'New',
                      style: theme.primaryTextTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            15.horizontalSpace,
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Heavy:',
                    style: theme.primaryTextTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: Text(
                      '200g',
                      style: theme.primaryTextTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
