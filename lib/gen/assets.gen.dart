/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $GoogleFontsGen {
  const $GoogleFontsGen();

  /// File path: google_fonts/Marvel-Bold.ttf
  String get marvelBold => 'google_fonts/Marvel-Bold.ttf';

  /// File path: google_fonts/Marvel-BoldItalic.ttf
  String get marvelBoldItalic => 'google_fonts/Marvel-BoldItalic.ttf';

  /// File path: google_fonts/Marvel-Italic.ttf
  String get marvelItalic => 'google_fonts/Marvel-Italic.ttf';

  /// File path: google_fonts/Marvel-Regular.ttf
  String get marvelRegular => 'google_fonts/Marvel-Regular.ttf';

  /// File path: google_fonts/OFL.txt
  String get ofl => 'google_fonts/OFL.txt';
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/sardunya_logo.svg
  String get sardunyaLogo => 'assets/logos/sardunya_logo.svg';

  /// File path: assets/logos/sardunya_logo_512.png
  AssetGenImage get sardunyaLogo512 =>
      const AssetGenImage('assets/logos/sardunya_logo_512.png');
}

class Assets {
  Assets._();

  static const $AssetsLogosGen logos = $AssetsLogosGen();
  static const $GoogleFontsGen googleFonts = $GoogleFontsGen();
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
    double? scale = 1.0,
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
}
