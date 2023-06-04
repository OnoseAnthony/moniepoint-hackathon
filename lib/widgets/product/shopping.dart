import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_hackathon/common/constants/colors.dart';

class ShippingInfo extends StatelessWidget {
  const ShippingInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Shipping information:',
          style: theme.primaryTextTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        15.verticalSpace,
        Row(
          children: [
            Text(
              'Delivery:',
              style: theme.primaryTextTheme.bodySmall?.copyWith(
                color: AppColors.gray700,
                fontSize: 12.sp,
              ),
            ),
            8.horizontalSpace,
            Expanded(
              child: Text(
                'Shipping from Jakarta, Indonesia',
                style: theme.primaryTextTheme.bodyMedium?.copyWith(
                  color: AppColors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        10.verticalSpace,
        Row(
          children: [
            Text(
              'Shipping:',
              style: theme.primaryTextTheme.bodySmall?.copyWith(
                color: AppColors.gray700,
                fontSize: 12.sp,
              ),
            ),
            8.horizontalSpace,
            Expanded(
              child: Text(
                'FREE International Shipping',
                style: theme.primaryTextTheme.bodyMedium?.copyWith(
                  color: AppColors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        10.verticalSpace,
        Row(
          children: [
            Text(
              'Arrive:',
              style: theme.primaryTextTheme.bodySmall?.copyWith(
                color: AppColors.gray700,
                fontSize: 12.sp,
              ),
            ),
            8.horizontalSpace,
            Expanded(
              child: Text(
                'Estimated arrival on 25th Oct, 2023',
                style: theme.primaryTextTheme.bodyMedium?.copyWith(
                  color: AppColors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        25.verticalSpace,
        const Divider(),
      ],
    );
  }
}
