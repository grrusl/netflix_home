import 'package:flutter/material.dart';

import 'page_arrow.dart';

class PageWidget extends StatefulWidget {
  final int count;
  final Widget? Function(BuildContext, int) itemBuilder;
  final double contentWidth;

  const PageWidget({
    super.key,
    required this.count,
    required this.itemBuilder,
    required this.contentWidth,
  });

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  late final ScrollController _controller;
  bool _arrowLeftVisible = false;
  bool _arrowRightVisible = false;
  bool _leftEdge = true;
  bool _rightEdge = true;
  bool _block = false;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_checkNavigation);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _checkNavigation();
    });
  }

  void _checkNavigation() {
    var left = _controller.hasClients &&
        _controller.offset <= _controller.position.minScrollExtent + 20;
    var right = _controller.hasClients &&
        _controller.offset + 50 >= _controller.position.maxScrollExtent;
    if (left != _leftEdge) setState(() => _leftEdge = left);
    if (right != _rightEdge) setState(() => _rightEdge = right);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          clipBehavior: Clip.none,
          controller: _controller,
          scrollDirection: Axis.horizontal,
          itemCount: widget.count,
          itemBuilder: widget.itemBuilder,
        ),
        Positioned(
          left: 0,
          top: 0,
          bottom: 5,
          width: 45,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onHover: (_) {
              if (_leftEdge) return;
              setState(() => _arrowLeftVisible = true);
            },
            onExit: (_) {
              if (_leftEdge) return;
              setState(() => _arrowLeftVisible = false);
            },
            child: PageArrow(
              arrowVisible: _arrowLeftVisible,
              type: ArrowType.left,
              hide: _leftEdge,
              onTap: () async {
                if (_block) return;
                setState(() => _block = true);
                await _controller.animateTo(
                  _controller.offset - widget.contentWidth,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.decelerate,
                );
                setState(() => _block = false);
              },
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          bottom: 5,
          width: 45,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onHover: (_) {
              if (_rightEdge) return;
              setState(() => _arrowRightVisible = true);
            },
            onExit: (_) {
              if (_rightEdge) return;
              setState(() => _arrowRightVisible = false);
            },
            child: PageArrow(
              arrowVisible: _arrowRightVisible,
              type: ArrowType.right,
              hide: _rightEdge,
              onTap: () async {
                if (_block) return;
                setState(() => _block = true);
                await _controller.animateTo(
                  _controller.offset + widget.contentWidth,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.decelerate,
                );
                setState(() => _block = false);
              },
            ),
          ),
        ),
      ],
    );
  }
}
