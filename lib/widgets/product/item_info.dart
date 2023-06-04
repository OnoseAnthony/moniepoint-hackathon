import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_hackathon/state/app_state/models/product.dart';
import 'package:moniepoint_hackathon/widgets/product/reviews_ratings.dart';
import 'package:moniepoint_hackathon/widgets/product/seller_info.dart';
import 'package:moniepoint_hackathon/widgets/product/shopping.dart';
import 'package:moniepoint_hackathon/widgets/product/top_reviews.dart';

import '../product_tile.dart';
import 'brand.dart';
import 'description.dart';
import 'img_vids.dart';


class AboutItem extends StatelessWidget {
  const AboutItem({
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
        const BrandCategory(),
        25.verticalSpace,
        const Divider(),
        25.verticalSpace,
        const Description(),
        25.verticalSpace,
        const ShippingInfo(),
        25.verticalSpace,
        const SellerInfromation(),
        25.verticalSpace,
        const ReviewsRatings(),
        25.verticalSpace,
        ImagesVideos(product: product),
        25.verticalSpace,
        const TopReviews(),
        25.verticalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommendation',
                  style: theme.primaryTextTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  'See more',
                  style: theme.primaryTextTheme.bodySmall?.copyWith(
                    color: theme.primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            Wrap(
              children: [
                for (var i = 0; i < 2; i++)
                  ProductTile(
                    product: Product.products[i],
                  )
              ],
            ),
          ],
        )
      ],
    );
  }
}
