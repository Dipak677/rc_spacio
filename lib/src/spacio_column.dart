import 'package:flutter/material.dart';

/// A customizable column widget that provides flexible spacing options.
///
/// The [SpacioColumn] widget simplifies the process of managing external
/// and internal spacing between child widgets in a vertical layout.
class SpacioColumn extends StatelessWidget {
  /// The spacing above the column. Defaults to `0.0`.
  final double? topSpacing;

  /// The spacing below the column. Defaults to `0.0`.
  final double? bottomSpacing;

  /// The spacing between each child widget in the column. Defaults to `0.0`.
  final double? internalSpacing;

  /// The child widgets to display in the column.
  final List<Widget> children;

  /// How the children should be aligned vertically within the column.
  ///
  /// Defaults to [MainAxisAlignment.start].
  final MainAxisAlignment mainAxisAlignment;

  /// How the children should be aligned horizontally within the column.
  ///
  /// Defaults to [CrossAxisAlignment.center].
  final CrossAxisAlignment crossAxisAlignment;

  /// How much space the column should occupy in the vertical axis.
  ///
  /// Defaults to [MainAxisSize.max].
  final MainAxisSize mainAxisSize;

  /// Creates a [SpacioColumn] widget.
  ///
  /// All parameters are optional except [children], which is required.
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
        if (topSpacing != null && topSpacing! > 0) SizedBox(height: topSpacing),
        for (int i = 0; i < children.length; i++) ...[
          children[i],
          if (i != children.length - 1 &&
              internalSpacing != null &&
              internalSpacing! > 0)
            SizedBox(height: internalSpacing),
        ],
        if (bottomSpacing != null && bottomSpacing! > 0)
          SizedBox(height: bottomSpacing),
      ],
    );
  }
}
