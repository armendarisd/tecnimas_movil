import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:reto2/clases/productos.dart';
import 'package:reto2/controlador/controladorGeneral.dart';

void main() {
  group('controladorGeneral tests', () {
    late controladorGeneral controller;

    setUp(() {
      controller = controladorGeneral();
      controller.onInit();
    });

    test('Test onInit function', () {
      expect(controller.pro.length, equals(5));
      expect(controller.pro[0].nombre, equals("Camiseta Stranger"));
      expect(controller.pro[0].cantidad, equals(0));
      expect(controller.pro[0].precio, equals(80000));
    });

    test('Test cambiarposicion function', () {
      controller.cambiarposicion(2);
      expect(controller.posicionPagina, equals(2));
    });

    test('Test cambiarCantidad function', () {
      controller.cambiarCantidad(1, 2);
      expect(controller.pro[1].cantidad, equals(2));
    });

    test('Test calcularTotal function', () {
      controller.cambiarCantidad(1, 2);
      controller.cambiarCantidad(3, 3);
      expect(controller.calcularTotal(), equals(395000));
    });

    test('Test limpiartodo function', () {
      controller.cambiarCantidad(1, 2);
      controller.limpiartodo();
      expect(controller.pro[1].cantidad, equals(0));
      expect(controller.calcularTotal(), equals(0));
    });
  });
}
