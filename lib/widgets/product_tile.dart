import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:moniepoint_hackathon/common/constants/strings/asset_path.dart';
import 'package:moniepoint_hackathon/core/route_manager.dart';

import '../main.dart';
import '../state/app_state/models/product.dart';


class ProductTile extends StatefulWidget {
  const ProductTile({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        AppRoutesManager.productView,
        arguments: widget.product,
      ),
      child: Listener(
        onPointerDown: (_) => setState(() => clicked = true),
        onPointerUp: (_) => setState(() => clicked = false),
        child: Container(
          width: size.width * .45,
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: 8.h,
          ),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: clicked
                  ? [
                const BoxShadow(
                  color: Colors.black12,
                  spreadRadius: .5,
                  blurRadius: 13,
                ),
              ]
                  : null,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      image: widget.product.image,
                      placeholder: AssetPath.kNoImage,
                      height: 80.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Typicons.heart),
                      ),
                    ),
                  ],
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 5),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: clicked ? Colors.white : Colors.transparent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        widget.product.type,
                        style: theme.primaryTextTheme.bodySmall?.copyWith(
                          fontSize: 8.sp,
                          color: Colors.grey,
                        ),
                      ),
                      5.verticalSpace,
                      Text(
                        widget.product.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.primaryTextTheme.bodySmall?.copyWith(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Typicons.star_filled,
                                  size: 12.sp,
                                  color: Colors.amber,
                                ),
                                3.horizontalSpace,
                                Text(
                                  '4.9',
                                  style: theme.primaryTextTheme.bodySmall?.copyWith(
                                    fontSize: 9.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                                3.horizontalSpace,
                                Container(
                                  width: 1,
                                  height: 12.h,
                                  color: Colors.grey,
                                ),
                                3.horizontalSpace,
                                Text(
                                  '2356',
                                  style: theme.primaryTextTheme.bodySmall?.copyWith(
                                    fontSize: 9.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          10.horizontalSpace,
                          Text(
                            widget.product.price,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.primaryTextTheme.bodySmall?.copyWith(
                              fontSize: 14.sp,
                              color: theme.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          10.verticalSpace
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
