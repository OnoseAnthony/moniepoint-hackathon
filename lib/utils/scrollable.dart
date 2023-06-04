import 'package:flutter/material.dart' show ScrollController;

bool isScrollTop(ScrollController controller) {
  final double minScroll = controller.position.minScrollExtent;
  final double currentScroll = controller.position.pixels;
  return minScroll == currentScroll;
}

bool isScrolledToBottom(ScrollController controller) {
  final double maxScroll = controller.position.maxScrollExtent;
  final double currentScroll = controller.position.pixels;
  return maxScroll == currentScroll;
}