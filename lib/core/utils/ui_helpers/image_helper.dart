import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Returns a widget that displays a cached network image with optional height, width, and border radius.
Widget buildCachedImage(String imageUrl,
    {double? height, double? width, double borderRadius = 4.0}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(borderRadius),
    child: CachedNetworkImage(
      imageUrl: imageUrl,
      height: height ?? 60,
      width: width ?? 60,
      fit: BoxFit.cover,
      placeholder: (context, url) => Container(
        height: height ?? 60,
        width: width ?? 60,
        color: Colors.grey.shade300,
      ),
      errorWidget: (context, url, error) => Container(
        height: height ?? 60,
        width: width ?? 60,
        color: Colors.grey.shade300,
        child: const Icon(Icons.error),
      ),
    ),
  );
}

/// Returns a Hero widget wrapping the cached image.
Widget buildHeroImage(String imageUrl, String heroTag,
    {double? height, double? width, double borderRadius = 4.0}) {
  return Hero(
    tag: heroTag,
    child: buildCachedImage(imageUrl,
        height: height, width: width, borderRadius: borderRadius),
  );
}
