import 'package:flutter/material.dart';

class SpacioColumn extends StatelessWidget {
  final double? topSpacing;
  final double? bottomSpacing;
  final double? internalSpacing;
  final List<Widget> children;

  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;

  const SpacioColumn({
    super.key,
    this.topSpacing = 0.0,
    this.bottomSpacing = 0.0,
    this.internalSpacing = 0.0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: [
        if (topSpacing != null && topSpacing! > 0)
          SizedBox(height: topSpacing),
        for (int i = 0; i < children.length; i++) ...[
          children[i],
          if (i != children.length - 1 && internalSpacing != null && internalSpacing! > 0)
            SizedBox(height: internalSpacing),
        ],
        if (bottomSpacing != null && bottomSpacing! > 0)
          SizedBox(height: bottomSpacing),
      ],
    );
  }
}
