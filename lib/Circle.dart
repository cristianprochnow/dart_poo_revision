import 'dart:math';

import 'package:dart_poo_revision/Shape.dart';

class Circle extends Shape {
  double _radius; // Não pode ser nulo.
  double? maybeRadius; // Pode ser nulo.

  Circle() : _radius = 1.0; // Construtor normal.

  Circle.withRadius(this._radius); // Construtor nomeado.

  Circle.withRadiusAndColorAndFilled(this._radius, String color, bool filled)
      : super.withColorAndFilled(color, filled);

  set radius(double radius) {
    _radius = radius;
  }
  double get radius => _radius;

  @override
  double getArea() => pi * pow(_radius, 2);

  @override
  double getPerimeter() => 2 * pi * _radius;

  @override
  String toString() => 'Circle[${super.toString()}, radius=$_radius]';
}