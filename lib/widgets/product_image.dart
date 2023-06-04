import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../state/app_state/models/product.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    super.key,
    required this.cloth,
  });

  final Product cloth;


  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  late String img;
  @override
  void initState() {
    img = widget.cloth.images.first;
    if(context.mounted){
      setState(() {

      });
    }
    super.initState();
  }

  void changeImg(String i) {
    setState(() => img = i);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: ClipRRect(
            key: ValueKey(img),
            borderRadius: BorderRadius.circular(10.r),
            child: Image.network(
              img,
              width: double.infinity,
              height: 300.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(
              top: 16.h,
              left: 16.w,
            ),
            child: Column(
              children: [
                for (var i in widget.cloth.images)
                  GestureDetector(
                    onTap: () => changeImg(i),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 40.w,
                      height: 40.h,
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(
                          color: i == img
                              ? Colors.amber
                              : Colors.transparent,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(i),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
