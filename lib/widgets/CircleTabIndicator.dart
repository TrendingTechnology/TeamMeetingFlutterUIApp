import 'package:flutter/material.dart';

class CircleTabIndicator extends Decoration {
  final Color _paint;
  final double radius;

  CircleTabIndicator(this._paint, this.radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    assert(onChanged != null);
    return _CirclePainter(_paint, radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset((cfg.size?.width)! / 2, (cfg.size?.height)! - (radius));
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
