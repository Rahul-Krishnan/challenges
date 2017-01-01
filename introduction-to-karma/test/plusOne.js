// test/plusOne.js
import plusOne from '../src/plusOne';

describe('plusOne', () => {
  it('should add one to the given number', () => {
    let number = plusOne(1);
    expect(number).toBe(2);
  });
});
