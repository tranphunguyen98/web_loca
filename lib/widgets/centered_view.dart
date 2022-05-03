import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const CenteredView({Key? key, required this.child, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}