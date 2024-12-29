import 'package:flutter/material.dart';

class SpacioRow extends StatelessWidget {
  final double? leftSpacing;
  final double? rightSpacing;
  final double? internalSpacing;
  final List<Widget> children;

  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;

  const SpacioRow({
    super.key,
    this.leftSpacing = 0.0,
    this.rightSpacing = 0.0,
    this.internalSpacing = 0.0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: [
        if (leftSpacing != null && leftSpacing! > 0)
          SizedBox(width: leftSpacing),
        for (int i = 0; i < children.length; i++) ...[
          children[i],
          if (i != children.length - 1 && internalSpacing != null && internalSpacing! > 0)
            SizedBox(width: internalSpacing),
        ],
        if (rightSpacing != null && rightSpacing! > 0)
          SizedBox(width: rightSpacing),
      ],
    );
  }
}
