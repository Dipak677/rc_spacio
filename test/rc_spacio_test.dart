import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rc_spacio/rc_spacio.dart'; // Update if your package path is different

void main() {
  group('SpacioColumn Tests', () {
    testWidgets('SpacioColumn should render children with top space', (WidgetTester tester) async {
      // Arrange
      const topSpace = 20.0;

      // Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SpacioColumn(
              topSpacing: topSpace,
              children: [Text('Item 1'), Text('Item 2')],
            ),
          ),
        ),
      );

      // Assert
      final topSpacingFinder = find.byWidgetPredicate(
        (widget) => widget is SizedBox && widget.key == const Key('topSpacing'),
      );

      expect(topSpacingFinder, findsOneWidget);
      final sizedBox = tester.widget<SizedBox>(topSpacingFinder);
      expect(sizedBox.height, topSpace);
    });

    testWidgets('SpacioColumn should render children with internal spacing', (WidgetTester tester) async {
      // Arrange
      const internalSpacing = 10.0;

      // Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SpacioColumn(
              internalSpacing: internalSpacing,
              children: [Text('Item 1'), Text('Item 2')],
            ),
          ),
        ),
      );

      // Assert
      final paddingWidgets = tester.widgetList<Padding>(find.byType(Padding));
      expect(paddingWidgets.length, 2); // Each child should have padding
      expect(paddingWidgets.first.padding.vertical, const EdgeInsets.symmetric(vertical: internalSpacing).vertical);
    });

    testWidgets('SpacioColumn should render children with bottom space', (WidgetTester tester) async {
      // Arrange
      const bottomSpace = 15.0;

      // Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SpacioColumn(
              bottomSpacing: bottomSpace,
              children: [Text('Item 1'), Text('Item 2')],
            ),
          ),
        ),
      );

      // Assert
      final bottomSpacingFinder = find.byWidgetPredicate(
        (widget) => widget is SizedBox && widget.key == const Key('bottomSpacing'),
      );

      expect(bottomSpacingFinder, findsOneWidget);
      final sizedBox = tester.widget<SizedBox>(bottomSpacingFinder);
      expect(sizedBox.height, bottomSpace);
    });
  });

  group('SpacioRow Tests', () {
    testWidgets('SpacioRow should render children with left space', (WidgetTester tester) async {
      // Arrange
      const leftSpace = 20.0;

      // Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SpacioRow(
              leftSpacing: leftSpace,
              children: [Text('Item 1'), Text('Item 2')],
            ),
          ),
        ),
      );

      // Assert
      final leftSpacingFinder = find.byWidgetPredicate(
        (widget) => widget is SizedBox && widget.key == const Key('leftSpacing'),
      );

      expect(leftSpacingFinder, findsOneWidget);
      final sizedBox = tester.widget<SizedBox>(leftSpacingFinder);
      expect(sizedBox.width, leftSpace);
    });

    testWidgets('SpacioRow should render children with internal spacing', (WidgetTester tester) async {
      // Arrange
      const internalSpacing = 10.0;

      // Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SpacioRow(
              internalSpacing: internalSpacing,
              children: [Text('Item 1'), Text('Item 2')],
            ),
          ),
        ),
      );

      // Assert
      final paddingWidgets = tester.widgetList<Padding>(find.byType(Padding));
      expect(paddingWidgets.length, 2); // Each child should have padding
      expect(paddingWidgets.first.padding.horizontal, const EdgeInsets.symmetric(horizontal: internalSpacing).horizontal);
    });

    testWidgets('SpacioRow should render children with right space', (WidgetTester tester) async {
      // Arrange
      const rightSpace = 15.0;

      // Act
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SpacioRow(
              rightSpacing: rightSpace,
              children: [Text('Item 1'), Text('Item 2')],
            ),
          ),
        ),
      );

      // Assert
      final rightSpacingFinder = find.byWidgetPredicate(
        (widget) => widget is SizedBox && widget.key == const Key('rightSpacing'),
      );

      expect(rightSpacingFinder, findsOneWidget);
      final sizedBox = tester.widget<SizedBox>(rightSpacingFinder);
      expect(sizedBox.width, rightSpace);
    });
  });
}
