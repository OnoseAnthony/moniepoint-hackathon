import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moniepoint_hackathon/common/extensions/strings.dart';
import 'package:moniepoint_hackathon/state/app_state/app_state_provider.dart';

import '../common/constants/data.dart';


class MyBottomNav extends ConsumerStatefulWidget {
  const MyBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MyBottomNavState();
}

class _MyBottomNavState extends ConsumerState<MyBottomNav> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      height: 80.h,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 15.h),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var i = 0; i < bars.length; i++)
            InkWell(
              onTap: () {
                setState(() {
                  ref.read(appStateProvider).current = i;
                });
              },
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: Column(
                  key: ValueKey(
                    '${bars[i]['icon']}${i == ref.read(appStateProvider).current ? '-filled' : '-lined'}',
                  ),
                  children: [
                    Image.asset(
                      '${bars[i]['icon']}${i == ref.read(appStateProvider).current ? '-filled' : '-lined'}'.icon,
                      height: 20.sp,
                      width: 20.sp,
                    ),
                    5.verticalSpace,
                    Text(
                      bars[i]['label'] as String,
                      style: theme.primaryTextTheme.bodySmall?.copyWith(
                        color: i == ref.read(appStateProvider).current
                            ? Colors.black
                            : Colors.grey,
                        fontWeight: i == ref.read(appStateProvider).current
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
