import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moniepoint_hackathon/common/constants/colors.dart';
import 'package:moniepoint_hackathon/state/app_state/app_state_provider.dart';

import '../main.dart';
import '../state/app_state/models/product.dart';
import '../utils/scrollable.dart';
import '../widgets/app/app_bar.dart';
import '../widgets/banner.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/category.dart';
import '../widgets/product_tile.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {

  @override
  void initState() {
    init();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: ref.read(appStateProvider).scrollController,
            physics: const PageScrollPhysics(
              parent: ClampingScrollPhysics(),
            ),
            child: Column(
              children: [
                const Banners(),
                const CategoryBar(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  height: (size.height - (170.h + padding.top)),
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Best Sale Product',
                            style: theme.primaryTextTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'See more',
                            style: theme.primaryTextTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.primaryColor,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                      15.verticalSpace,
                      Expanded(
                        child: Consumer(
                          builder: (_, value, __)
                          {
                            final appState = value.watch(appStateProvider);
                            return SingleChildScrollView(
                              physics: appState.scrollPhysics,
                              controller: appState.scrollController2,
                              child: Wrap(
                                children: [
                                  for (Product product in Product.products)
                                    ProductTile(product: product)
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const MyAppBar()
        ],
      ),
      bottomNavigationBar: const MyBottomNav(),
    );
  }

  void init() {
    final homeState = ref.read(appStateProvider);
    homeState.scrollController.addListener(() {
      if(isScrolledToBottom(homeState.scrollController)){
        homeState.appBarColor = AppColors.white;
        homeState.scrollPhysics = const ClampingScrollPhysics();
      } else {
        homeState.appBarColor = AppColors.transparent;
      }
    });

    homeState.scrollController2.addListener(() {
      if(!isScrollTop(homeState.scrollController2)
          && isScrolledToBottom(homeState.scrollController)){
        homeState.scrollPhysics = const ClampingScrollPhysics();
      } else {
        homeState.scrollPhysics = const NeverScrollableScrollPhysics();
      }
    });
  }

}
