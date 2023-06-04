import 'package:moniepoint_hackathon/common/constants/strings/asset_path.dart';

import 'colors.dart';

const List<Map<String, dynamic>> bars = [
  {
    'icon': 'home',
    'label': 'Home',
  },
  {
    'icon': 'voucher',
    'label': 'Voucher',
  },
  {
    'icon': 'wallet',
    'label': 'Wallet',
  },
  {
    'icon': 'settings',
    'label': 'Settings',
  },
];

final List<Map<String, dynamic>> appBarActionItem = [
  {'img': AssetPath.kCartEmpty, 'text': '1'},
  {'img': AssetPath.kMessage, 'text': '9+'},
];

final List<Map<String, dynamic>> productDetailsActionItem = [
  {'img': AssetPath.kHeart, 'text': ''},
  {'img': AssetPath.kShare, 'text': ''},
  {'img': AssetPath.kCartEmpty, 'text': '1'},
];

final List<Map<String, dynamic>> banner = [
  {
    'color': AppColors.gray400,
    'tag': 'FASHION DAY',
    'large': '80% OFF',
    'small': 'Discover fashion that suits to\nyour style',
    'button': 'Check this out',
    'image': AssetPath.kClothesRack,
  },
  {
    'color': AppColors.gray500,
    'tag': 'BEAUTY SALE',
    'large': '12% OFF',
    'small': 'DISCOVER OUR\nBEAUTY SELECTION',
    'button': 'Check this out',
    'image': AssetPath.kBeauty,
  },
  {
    'color': AppColors.gray600,
    'tag': 'BLACK FRIDAY',
    'large': '50% OFF',
    'small': 'Discover fashion that suits to\nyour style',
    'button': 'Check this out',
    'image': AssetPath.kBlackFriday,
  },
];

final List<String> detailTab = [
  'About Item',
  'Reviews',
];

final List<String> desc = [
  'Long-sleeve shirt in classic fit featuring button down collar',
  'Comfortable a classic dress shirt',
  'Durable combination fabric',
  'Goto classic button down shirt',
  'Shirt in classic fit featuring button down collar',
];