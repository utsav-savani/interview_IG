import 'package:flutter/material.dart';

class MediaQueryUtil {
  final BuildContext context;

  MediaQueryUtil(this.context);

  // Screen width
  double get width => MediaQuery.of(context).size.width;

  // Screen height
  double get height => MediaQuery.of(context).size.height;

  // Check if device is in portrait mode
  bool get isPortrait =>
      MediaQuery.of(context).orientation == Orientation.portrait;

  // Check if device is in landscape mode
  bool get isLandscape =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  // Get screen pixel ratio
  double get pixelRatio => MediaQuery.of(context).devicePixelRatio;

  // Check if device is a tablet
  bool get isTablet {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide >= 600;
  }

  // Check if device is a mobile phone
  bool get isMobile => !isTablet;

  // Get safe area padding
  EdgeInsets get safePadding => MediaQuery.of(context).padding;

  // Get screen width percentage
  double widthPercentage(double percentage) {
    assert(percentage >= 0 && percentage <= 100,
        'Percentage must be between 0 and 100');
    return width * (percentage / 100);
  }

  // Get screen height percentage
  double heightPercentage(double percentage) {
    assert(percentage >= 0 && percentage <= 100,
        'Percentage must be between 0 and 100');
    return height * (percentage / 100);
  }

  // Responsive text size
  double responsiveTextSize(double baseSize) {
    // Adjust text size based on screen width
    return baseSize * (width / 375.0);
  }
}
