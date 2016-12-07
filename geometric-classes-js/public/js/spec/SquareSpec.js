/* jshint esversion: 6 */
describe('Square', () =>  {
  describe('new Square()', () =>  {
    it('takes argument for a length of a side', () =>  {
      let square = new Square(4);

      expect(square).toBeDefined();
      expect(square.side).toBe(4);
    });

    it('takes optional argument for the center point', () =>  {
      let square = new Square(4, 3, 7);

      expect(square.x).toBe(3);
      expect(square.y).toBe(7);
    });

    it('defaults (x,y) to (0,0) if not provided', () =>  {
      let square = new Square(10);

      expect(square.x).toBe(0);
      expect(square.y).toBe(0);
    });
  });

  describe('area()', () =>  {
    it('returns the area of the square', () =>  {
      let square = new Square(12);

      expect(square.area()).toBe(144);
    });
  });
  describe('area()', () =>  {
    it('returns the area of the square', () =>  {
      let square = new Square(12);

      expect(square.area()).toBe(144);
    });
  });

  describe('perimeter()', () =>  {
    it('returns the perimeter of the square', () =>  {
      let square = new Square(5, 3, 7);

      expect(square.perimeter()).toBe(20);
    });
  });

  describe('contains_point(x,y)', () =>  {
    it('returns true for a point given inside of the square\'s perimeter', () => {
      let square = new Square(4, 3, 5);

      expect(square.contains_point(2,4)).toBe(true);
    });

    it('returns false for a point given outside of the square\'s perimeter', () => {
      let square = new Square(4, 3, 5);

      expect(square.contains_point(-3,1)).toBe(false);
    });
  });
});
