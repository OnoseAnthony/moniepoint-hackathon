import 'package:moniepoint_hackathon/common/constants/strings/asset_path.dart';

extension StringExtension on String {
  String get icon => '${AssetPath.iconPath}/$this.png';
  String get img => '${AssetPath.pngImagePath}/$this.png';
}
