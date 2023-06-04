import 'package:hooks_riverpod/hooks_riverpod.dart' show ChangeNotifierProvider;
import 'package:moniepoint_hackathon/state/app_state/app_state_notifier.dart';


final appStateProvider = ChangeNotifierProvider<AppStateNotifier>((ref) =>
    AppStateNotifier());
