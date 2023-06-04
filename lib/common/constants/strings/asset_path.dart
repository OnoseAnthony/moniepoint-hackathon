
import 'package:flutter/foundation.dart';
import 'package:moniepoint_hackathon/common/extensions/strings.dart';

@immutable
abstract class AssetPath {
  static const imagePath = 'assets/images';
  static const iconPath = 'assets/icons';
  static const pngImagePath = '$imagePath/png';

  // PNG_IMAGE
  static final String kClothesRack = 'clothes-rack'.img;
  static final String kBeauty = 'beauty'.img;
  static final String kBlackFriday = 'black-friday'.img;
  static final String kNoImage = 'no-image'.img;

  // PNG_ICON_IMAGE
  static final String kCartEmpty = 'shopping-empty'.icon;
  static final String kCartFull = 'shopping-full'.icon;
  static final String kMessage = 'message'.icon;
  static final String kHeart = 'heart-lined'.icon;
  static final String kShare = 'share-lined'.icon;

  const AssetPath._();
}
