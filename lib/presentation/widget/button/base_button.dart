import 'package:flutter/material.dart';

class BaseButton extends StatefulWidget {
  const BaseButton({
    Key? key,
    this.onPressed,
    this.builder,
  }) : super(key: key);
  final Function()? onPressed;
  final Widget Function(bool isPressed)? builder;

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  /// Scale anim duration
  Duration scaleDuration = const Duration(milliseconds: 80);

  /// isPressed
  bool _isPressed = false;
  bool get isPressed => _isPressed;
  set isPressed(bool v) {
    setState(() {
      _isPressed = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => isPressed = true,
      onTapCancel: () => isPressed = false,
      onTapUp: (_) {
        isPressed = false;
        widget.onPressed?.call();
      },
      child: AnimatedScale(
        duration: scaleDuration,
        scale: isPressed ? 0.97 : 1.0,
        child: widget.builder?.call(isPressed),
      ),
    );
  }
}
