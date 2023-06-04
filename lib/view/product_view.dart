import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moniepoint_hackathon/common/constants/colors.dart';
import 'package:moniepoint_hackathon/state/app_state/app_state_provider.dart';

import '../common/constants/data.dart';
import '../state/app_state/models/product.dart';
import '../widgets/app/app_bar_detail.dart';
import '../widgets/buynow.dart';
import '../widgets/product/item_info.dart';
import '../widgets/product_image.dart';
import '../widgets/summary.dart';


class ProductView extends ConsumerWidget {
  const ProductView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const ProductAppbar(),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
            ),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  15.verticalSpace,
                  SlideInUp(
                    delay: const Duration(milliseconds: 200),
                    duration: const Duration(milliseconds: 800),
                    child: ProductImage(cloth: product),
                  ),
                  15.verticalSpace,
                  SlideInUp(
                    delay: const Duration(milliseconds: 220),
                    duration: const Duration(milliseconds: 1000),
                    child: Summary(product: product),
                  ),
                  20.verticalSpace,
                  SlideInUp(
                    delay: const Duration(milliseconds: 240),
                    duration: const Duration(milliseconds: 1200),
                    child: Row(
                      children: [
                        for (var tab in detailTab)
                          Expanded(
                            child: GestureDetector(
                              child: Column(
                                children: [
                                  Text(
                                    tab,
                                    style: theme.primaryTextTheme.bodyMedium?.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: ref
                                          .read(appStateProvider)
                                          .currentDetailTab ==
                                          tab
                                          ? theme.primaryColor
                                          : AppColors.gray700,
                                    ),
                                  ),
                                  8.verticalSpace,
                                  Container(
                                    width: double.infinity,
                                    height: 2.h,
                                    color: ref
                                        .read(appStateProvider)
                                        .currentDetailTab ==
                                        tab
                                        ? theme.primaryColor
                                        : AppColors.transparent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  SlideInUp(
                    delay: const Duration(milliseconds: 260),
                    duration: const Duration(milliseconds: 1400),
                    child: AboutItem(product: product),
                  ),
                  120.verticalSpace,
                ],
              ),
            ),
          ),
          SlideInUp(
            delay: const Duration(milliseconds: 260),
            duration: const Duration(milliseconds: 1200),
            child: BuyNow(product: product),
          ),
        ],
      ),
    );
  }
}

