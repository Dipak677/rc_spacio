import 'package:flutter/material.dart';

/// A customizable row widget that provides flexible spacing options.
///
/// The [SpacioRow] widget simplifies the process of managing external
/// and internal spacing between child widgets in a horizontal layout.
class SpacioRow extends StatelessWidget {
  /// The spacing to the left of the row. Defaults to `0.0`.
  final double? leftSpacing;

  /// The spacing to the right of the row. Defaults to `0.0`.
  final double? rightSpacing;

  /// The spacing between each child widget in the row. Defaults to `0.0`.
  final double? internalSpacing;

  /// The child widgets to display in the row.
  final List<Widget> children;

  /// How the children should be aligned horizontally within the row.
  ///
  /// Defaults to [MainAxisAlignment.start].
  final MainAxisAlignment mainAxisAlignment;

  /// How the children should be aligned vertically within the row.
  ///
  /// Defaults to [CrossAxisAlignment.center].
  final CrossAxisAlignment crossAxisAlignment;

  /// How much space the row should occupy in the horizontal axis.
  ///
  /// Defaults to [MainAxisSize.max].
  final MainAxisSize mainAxisSize;

  /// Creates a [SpacioRow] widget.
  ///
  /// All parameters are optional except [children], which is required.
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
          if (i != children.length - 1 &&
              internalSpacing != null &&
              internalSpacing! > 0)
            SizedBox(width: internalSpacing),
        ],
        if (rightSpacing != null && rightSpacing! > 0)
          SizedBox(width: rightSpacing),
      ],
    );
  }
}
