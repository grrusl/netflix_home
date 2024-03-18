import 'package:flutter/material.dart';

class MoviePreviewController {
  static MoviePreviewController? _instance;
  static AnimationController? _currentController;

  AnimationController? get current => _currentController;

  factory MoviePreviewController() {
    return _instance ??= MoviePreviewController._internal();
  }

  Future<void> set(AnimationController controller) async {
    _reset();
    _currentController = controller;
  }

  void _reset() {
    if (_currentController != null) {
      _currentController?.reverse();
      _currentController = null;
    }
  }

  void dispose() {
    _reset();
    _currentController?.dispose();
  }

  MoviePreviewController._internal() {
    _instance = this;
  }
}
