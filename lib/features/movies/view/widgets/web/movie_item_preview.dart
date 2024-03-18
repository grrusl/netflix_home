import 'package:flutter/material.dart';
import 'package:netflix_home/core/core.dart';
import 'package:netflix_home/features/movies/model/model.dart';
import 'helper/overlay_portal.dart';
import 'movie_card_bottom.dart';
import 'movie_card_top.dart';

class MovieItemPreview extends StatefulWidget {
  final MovieModel movie;
  final Size size;

  const MovieItemPreview({
    super.key,
    required this.size,
    required this.movie,
  });

  @override
  State<MovieItemPreview> createState() => _MovieItemPreviewState();
}

class _MovieItemPreviewState extends State<MovieItemPreview>
    with SingleTickerProviderStateMixin {
  // Controllers & Initialization
  late final MoviePreviewController _moviePreviewController;
  late final AnimationController _controller;
  final _layerLink = LayerLink();

  // Animations
  Animation<Size>? _sizeAnimation;
  Animation<double>? _offsetAnimation;
  late final Animation<double> _bottomOpacityAnimation;

  // Variables
  double _startWidth = 0.0;
  double _startHeight = 0.0;
  OverlayEntry? _entry;

  Size endSize() {
    if (mounted) {
      return movieSinglePreview(context);
    }
    return Size.zero;
  }

  @override
  void initState() {
    super.initState();
    _moviePreviewController = MoviePreviewController();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _bottomOpacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5),
      ),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        hideOverlay();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _moviePreviewController.dispose();
    super.dispose();
  }

  void reInitAnimation() {
    _sizeAnimation = Tween<Size>(
      begin: Size(_startWidth, _startHeight),
      end: endSize(),
    ).animate(_controller);

    _offsetAnimation = Tween<double>(
      begin: 0,
      end: -(endSize().height - _startHeight) / 2,
    ).animate(
      _controller,
    );
  }

  void showOverlay() async {
    if (mounted) {
      _moviePreviewController.set(_controller);
      final overlay = Overlay.of(context);
      _entry = OverlayEntry(
        builder: (context) => AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext ctx, _) {
            return Stack(
              children: [
                Positioned(
                  width: _sizeAnimation?.value.width ?? 0.0,
                  height: _sizeAnimation?.value.height ?? 0.0,
                  child: CompositedTransformFollower(
                    link: _layerLink,
                    showWhenUnlinked: false,
                    offset: Offset(0, _offsetAnimation?.value ?? 0.0),
                    followerAnchor: Alignment.topCenter,
                    targetAnchor: Alignment.topCenter,
                    child: buildOverlay(),
                  ),
                ),
              ],
            );
          },
        ),
      );

      _controller.forward();
      overlay.insert(_entry!);
    }
  }

  void hideOverlay() {
    _entry?.remove();
    _entry = null;
  }

  Widget buildOverlay() {
    return FittedBox(
      fit: BoxFit.fitWidth,
      alignment: Alignment.topCenter,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.antiAlias,
        elevation: 15,
        shadowColor: Colors.black,
        child: GestureDetector(
          onTap: () {
            _controller.reverse();
          },
          child: Container(
            foregroundDecoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: NetworkImage(widget.movie.backdrop),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: FadeTransition(
              opacity: _bottomOpacityAnimation,
              child: SizedBox.fromSize(
                size: endSize(),
                child: MovieCardBottom(
                  movie: widget.movie,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 5, left: 5),
      width: widget.size.width,
      height: widget.size.height,
      child: CompositedTransformTarget(
        link: _layerLink,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTapUp: (details) {},
            onTap: () {
              reInitAnimation();
              showOverlay();
            },
            child: ResizeObserver(
              child: MovieCardTop(
                backdrop: widget.movie.backdrop,
              ),
              onResized: (v) {
                _startWidth = v.width;
                _startHeight = v.height;
              },
            ),
          ),
        ),
      ),
    );
  }
}
