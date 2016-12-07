/* jshint esversion: 6 */

describe('e-commerce app', () => {
  describe('new Product()', () => {
    it('takes an argument for quantity', () => {
      let product = new Product('LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png', 'It\'s a tiny Launch sticker. How cute!');

      expect(product.quantity).toBeDefined();
    });
  });

  describe('sell()', () =>  {
    it('reduces quantity by 1', () =>  {
      let product = new Product('LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png', 'It\'s a tiny Launch sticker. How cute!');
      product.sell();
      expect(product.quantity).toBe(199);
    });
  });
});
