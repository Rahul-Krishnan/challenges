/* jshint esversion: 6 */
class Square {
  constructor(side, x, y) {
    this.side = side;
    this.x = x || 0;
    this.y = y || 0;
  }
  area() {
    return Math.pow(this.side, 2);
  }
  perimeter() {
    return this.side * 4;
  }
  contains_point(x, y) {
    let leftBoundary = this.x - this.side/2;
    let rightBoundary = this.x + this.side/2;
    let bottomBoundary = this.y - this.side/2;
    let topBoundary = this.y + this.side/2;

    if (x > leftBoundary && x < rightBoundary && y > bottomBoundary && y < topBoundary) {
      return true;
    }
    else {
      return false;
    }
  }
}
