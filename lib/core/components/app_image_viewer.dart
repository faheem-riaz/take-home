import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  final Widget _child;

  AppImage.network({
    super.key,
    required final String imageUrl,
    final Map<String, String>? httpHeaders,
    final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder,
    final Widget Function(BuildContext, String)? placeholder,
    final Widget Function(BuildContext, String, DownloadProgress)? progressIndicatorBuilder,
    final Widget Function(BuildContext, String, dynamic)? errorWidget,
    final Duration? fadeOutDuration,
    final Curve? fadeOutCurve,
    final Duration? fadeInDuration,
    final Curve? fadeInCurve,
    final double? width,
    final double? height,
    final BoxFit? fit,
    final AlignmentGeometry? alignment,
    final ImageRepeat? repeat,
    final bool? matchTextDirection,
    final bool? useOldImageOnUrlChange,
    final Color? color,
    final FilterQuality? filterQuality,
    final BlendMode? colorBlendMode,
    final Duration? placeholderFadeInDuration,
    final int? memCacheWidth,
    final int? memCacheHeight,
    final String? cacheKey,
    final int? maxWidthDiskCache,
    final int? maxHeightDiskCache,
    final BorderRadius? borderRadius,
  }) : _child = _NetworkImage(
          imageUrl: imageUrl,
          httpHeaders: httpHeaders,
          imageBuilder: imageBuilder,
          placeholder: placeholder,
          progressIndicatorBuilder: progressIndicatorBuilder,
          errorWidget: errorWidget,
          fadeOutDuration: fadeOutDuration,
          fadeOutCurve: fadeOutCurve,
          fadeInDuration: fadeInDuration,
          fadeInCurve: fadeInCurve,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
          repeat: repeat,
          matchTextDirection: matchTextDirection,
          useOldImageOnUrlChange: useOldImageOnUrlChange,
          color: color,
          filterQuality: filterQuality,
          colorBlendMode: colorBlendMode,
          placeholderFadeInDuration: placeholderFadeInDuration,
          memCacheWidth: memCacheWidth,
          memCacheHeight: memCacheHeight,
          cacheKey: cacheKey,
          maxWidthDiskCache: maxWidthDiskCache,
          maxHeightDiskCache: maxHeightDiskCache,
          borderRadius: borderRadius,
        );

  AppImage.svg(
    final String assetName, {
    super.key,
    final double? width,
    final double? height,
    final ColorFilter? color,
    final BoxFit? fit,
    final AlignmentGeometry? alignment,
    final String? package,
    final bool? matchTextDirection,
  }) : _child = _AssetSvg(
          assetName: assetName,
          width: width,
          height: height,
          color: color,
          fit: fit,
          alignment: alignment,
          package: package,
          matchTextDirection: matchTextDirection,
        );

  AppImage.file({
    super.key,
    required File file,
    final double? width,
    final double? height,
    final Color? color,
    final BoxFit? fit,
  }) : _child = _ImageFile(
          file: file,
          width: width,
          height: height,
          color: color,
          fit: fit,
        );

  @override
  Widget build(BuildContext context) {
    return _child;
  }
}

class _NetworkImage extends StatelessWidget {
  final String imageUrl;
  final Map<String, String>? httpHeaders;
  final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder;
  final Widget Function(BuildContext, String)? placeholder;
  final Widget Function(BuildContext, String, DownloadProgress)? progressIndicatorBuilder;
  final Widget Function(BuildContext, String, dynamic)? errorWidget;
  final Duration fadeOutDuration;
  final Curve fadeOutCurve;
  final Duration fadeInDuration;
  final Curve fadeInCurve;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final ImageRepeat repeat;
  final bool matchTextDirection;
  final bool useOldImageOnUrlChange;
  final Color? color;
  final FilterQuality filterQuality;
  final BlendMode? colorBlendMode;
  final Duration? placeholderFadeInDuration;
  final int? memCacheWidth;
  final int? memCacheHeight;
  final String? cacheKey;
  final int? maxWidthDiskCache;
  final int? maxHeightDiskCache;
  final BorderRadius? borderRadius;

  const _NetworkImage({
    required this.imageUrl,
    this.httpHeaders,
    this.imageBuilder,
    this.placeholder,
    this.progressIndicatorBuilder,
    this.errorWidget,
    final Duration? fadeOutDuration,
    final Curve? fadeOutCurve,
    final Duration? fadeInDuration,
    final Curve? fadeInCurve,
    this.width,
    this.height,
    this.fit,
    final AlignmentGeometry? alignment,
    final ImageRepeat? repeat,
    final bool? matchTextDirection,
    final bool? useOldImageOnUrlChange,
    this.color,
    final FilterQuality? filterQuality,
    final BorderRadius? borderRadius,
    this.colorBlendMode,
    this.placeholderFadeInDuration,
    this.memCacheWidth,
    this.memCacheHeight,
    this.cacheKey,
    this.maxWidthDiskCache,
    this.maxHeightDiskCache,
  })  : fadeOutDuration = fadeOutDuration ?? const Duration(milliseconds: 1000),
        fadeOutCurve = fadeOutCurve ?? Curves.easeOut,
        fadeInDuration = fadeInDuration ?? const Duration(milliseconds: 500),
        fadeInCurve = fadeInCurve ?? Curves.easeIn,
        alignment = alignment ?? Alignment.center,
        repeat = repeat ?? ImageRepeat.noRepeat,
        matchTextDirection = matchTextDirection ?? false,
        useOldImageOnUrlChange = useOldImageOnUrlChange ?? false,
        filterQuality = filterQuality ?? FilterQuality.low,
        borderRadius = borderRadius ?? BorderRadius.zero;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return placeholder?.call(context, imageUrl) ?? Container();
    }
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        httpHeaders: httpHeaders,
        placeholder: placeholder,
        progressIndicatorBuilder: progressIndicatorBuilder,
        fadeInDuration: fadeInDuration,
        fadeOutDuration: fadeOutDuration,
        maxWidthDiskCache: maxWidthDiskCache,
        matchTextDirection: matchTextDirection,
        width: width,
        errorWidget: errorWidget,
        maxHeightDiskCache: maxHeightDiskCache,
        placeholderFadeInDuration: placeholderFadeInDuration,
        fadeInCurve: fadeInCurve,
        fadeOutCurve: fadeOutCurve,
        filterQuality: filterQuality,
        fit: fit,
        height: height,
        memCacheWidth: memCacheWidth,
        repeat: repeat,
        useOldImageOnUrlChange: useOldImageOnUrlChange,
        imageBuilder: imageBuilder,
        memCacheHeight: memCacheHeight,
        key: key,
        cacheKey: cacheKey,
        color: color,
        colorBlendMode: colorBlendMode,
      ),
    );
  }
}

class _ImageFile extends StatelessWidget {
  final File file;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? fit;

  const _ImageFile({
    required this.file,
    this.width,
    this.height,
    this.color,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Image.network(
        file.path,
        width: width,
        height: height,
        color: color,
        fit: fit,
      );
    }
    return Image.file(
      file,
      width: width,
      height: height,
      color: color,
      fit: fit,
    );
  }
}

class _AssetSvg extends StatelessWidget {
  final String assetName;
  final double? width;
  final double? height;
  final ColorFilter? color;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final String? package;
  final bool matchTextDirection;

  const _AssetSvg({
    required this.assetName,
    this.width,
    this.height,
    this.color,
    final BoxFit? fit,
    final AlignmentGeometry? alignment,
    this.package,
    final bool? matchTextDirection,
  })  : fit = fit ?? BoxFit.contain,
        alignment = alignment ?? Alignment.center,
        matchTextDirection = matchTextDirection ?? false;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: width,
      height: height,
      colorFilter: color,
      fit: fit,
      alignment: alignment,
      package: package,
      matchTextDirection: matchTextDirection,
    );
  }
}
