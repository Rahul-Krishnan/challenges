/* jshint esversion: 6 */
class Circle {
  constructor(radius, x, y) {
    this.radius = radius;
    this.x = x || 0;
    this.y = y || 0;
  }
  diameter() {
    return (2 * this.radius);
  }
  area() {
    return (Math.PI * Math.pow(this.radius, 2));
  }
  perimeter() {
    return (Math.PI * this.diameter());
  }
}
