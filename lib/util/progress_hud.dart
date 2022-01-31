import 'dart:ui';

import 'package:flutter/material.dart';

class ProgressHud extends StatelessWidget {
  final bool? inAsyncCall;
  final double opacity;
  final Color color;
  final double blurEffectIntensity;
  final Widget progressIndicator;
  final Offset? offset;
  final bool dismissible;
  final Widget? child;

  const ProgressHud({
    Key? key,
    required this.inAsyncCall,
    this.opacity = 0.3,
    this.color = Colors.grey,
    this.blurEffectIntensity = 1.0,
    this.progressIndicator = const CircularProgressIndicator(),
    this.offset,
    this.dismissible = false,
    required this.child,
  })  : assert(child != null),
        assert(inAsyncCall != null),
        assert(child is Widget),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    widgetList.add(child!);
    if (inAsyncCall == true) {
      Widget layOutProgressIndicator;
      layOutProgressIndicator = offset == null
          ? Center(child: progressIndicator)
          : Positioned(
              child: progressIndicator,
              left: offset!.dx,
              top: offset!.dy,
            );
      final modal = [
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blurEffectIntensity,
            sigmaY: blurEffectIntensity,
          ),
          child: Opacity(
            child: ModalBarrier(dismissible: dismissible, color: color),
            opacity: opacity,
          ),
        ),
        layOutProgressIndicator,
      ];
      widgetList += modal;
    }
    return Stack(
      alignment: Alignment
          .bottomCenter, //causing slight problems **can restore anytime
      children: widgetList,
    );
  }
}
