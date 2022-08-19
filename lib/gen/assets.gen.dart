/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Edit.png
  AssetGenImage get edit => const AssetGenImage('assets/icons/Edit.png');

  /// File path: assets/icons/Google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/Google.png');

  /// File path: assets/icons/Heart.png
  AssetGenImage get heart => const AssetGenImage('assets/icons/Heart.png');

  /// File path: assets/icons/Home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/Home.png');

  /// File path: assets/icons/Lock.png
  AssetGenImage get lock => const AssetGenImage('assets/icons/Lock.png');

  /// File path: assets/icons/Notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/icons/Notification.png');

  /// File path: assets/icons/Profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/Profile.png');

  /// File path: assets/icons/Scan.png
  AssetGenImage get scan => const AssetGenImage('assets/icons/Scan.png');

  /// File path: assets/icons/check_green.png
  AssetGenImage get checkGreen =>
      const AssetGenImage('assets/icons/check_green.png');

  /// File path: assets/icons/check_grey.png
  AssetGenImage get checkGrey =>
      const AssetGenImage('assets/icons/check_grey.png');

  /// File path: assets/icons/message.png
  AssetGenImage get message => const AssetGenImage('assets/icons/message.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/CapturedFood.png
  AssetGenImage get capturedFood =>
      const AssetGenImage('assets/images/CapturedFood.png');

  /// File path: assets/images/Food.png
  AssetGenImage get food => const AssetGenImage('assets/images/Food.png');

  /// File path: assets/images/Onboarding.png
  AssetGenImage get onboarding =>
      const AssetGenImage('assets/images/Onboarding.png');

  /// File path: assets/images/ingredient.png
  AssetGenImage get ingredient =>
      const AssetGenImage('assets/images/ingredient.png');

  /// File path: assets/images/notification_alt_img.png
  AssetGenImage get notificationAltImg =>
      const AssetGenImage('assets/images/notification_alt_img.png');

  /// File path: assets/images/notification_image.png
  AssetGenImage get notificationImage =>
      const AssetGenImage('assets/images/notification_image.png');

  /// File path: assets/images/notification_trail_img.png
  AssetGenImage get notificationTrailImg =>
      const AssetGenImage('assets/images/notification_trail_img.png');

  /// File path: assets/images/profile_image.png
  AssetGenImage get profileImage =>
      const AssetGenImage('assets/images/profile_image.png');

  /// File path: assets/images/recipe_image.png
  AssetGenImage get recipeImage =>
      const AssetGenImage('assets/images/recipe_image.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
