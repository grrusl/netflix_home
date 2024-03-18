import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

typedef ResizeCallback = void Function(Size newSize);

class ResizeObserver extends SingleChildRenderObjectWidget {
  final ResizeCallback onResized;

  const ResizeObserver({super.key, required this.onResized, super.child});

  @override
  RenderObject createRenderObject(BuildContext context) =>
      _RenderResizeObserver(onLayoutChangedCallback: onResized);
}

class _RenderResizeObserver extends RenderProxyBox {
  final ResizeCallback onLayoutChangedCallback;

  _RenderResizeObserver({
    RenderBox? child,
    required this.onLayoutChangedCallback,
  }) : super(child);

  Size? currentSize;

  @override
  void performLayout() {
    super.performLayout();
    Size? newSize = child?.size;
    if (newSize != null && newSize != currentSize) {
      currentSize = newSize;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onLayoutChangedCallback(currentSize!);
      });
    }
  }
}
