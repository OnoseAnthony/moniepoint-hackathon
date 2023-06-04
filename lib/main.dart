import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/constants/theme/theme_data.dart';
import 'core/route_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: HackathonApp()));
}

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
final size = MediaQuery.of(navKey.currentContext!).size;
final padding = MediaQuery.of(navKey.currentContext!).padding;

class HackathonApp extends StatelessWidget {
  const HackathonApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp, /* DeviceOrientation.portraitDown */
    ]);
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: false,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
              navigatorKey: navKey,
              title: 'Hackathon Demo',
              theme: AppThemeData.theme(),
              debugShowCheckedModeBanner: false,
              // themeMode: ThemeMode.light,
              initialRoute: AppRoutesManager.homeView,
              onGenerateRoute: AppRoutesManager.onGenerateRoute,
              builder: (_, Widget? child) {
                return MediaQuery(
                    data: MediaQuery.of(_).copyWith(textScaleFactor: 1.0),
                    child: child!);
              }
          );
        }
    );
  }
}


