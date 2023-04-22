import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:reto2/controlador/controladorGeneral.dart';
import 'package:reto2/ui/pag1_inicio.dart';


void main() {
    testWidgets('Arrow left button decrements counter', (WidgetTester tester) async {
  int counter = 5;
  
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
            icon: Image(
              image: AssetImage("assets/images/arrowL.png"),
              width: 50,
              color: Colors.black,
            ),
            iconSize: 30,
            alignment: Alignment.center,
            onPressed: () {
              counter--;
            },
          ),
        ),
      ),
    ),
  );
  
  // Verify that the initial counter value is displayed
  expect(find.text('$counter'), findsOneWidget);
  
  // Tap the button
  await tester.tap(find.byType(IconButton));
  await tester.pump();
  
  // Verify that the counter value has decremented
  expect(find.text('${counter-1}'), findsOneWidget);
});

}