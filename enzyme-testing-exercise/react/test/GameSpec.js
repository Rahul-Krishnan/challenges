/* jshint esversion: 6 */
import 'Game.js';

describe('Game', () => {
  // write non shallow (mount) tests here to test the Game Component with the
  // full DOM and don't forget to remove pending()
  beforeEach(() => {
    jasmineEnzyme();
    // add set up data as needed here
    // create a variable assigned to your full DOM rendered component
  });

  it('should have the specified inital state', () => {
    pending();
  });

  it('should render an h3 (<h3>) with the title of the page', () => {
    expect(wrapper.find('h3').text()).toBe('Tic Tac Toe');
  });

  it('should render the GameTable', () => {
    pending();
  });

  it('should render an X when a cell is clicked during X\'s turn', () => {
    pending();
  });

  it("should update who's turn it is when a cell is clicked during X\'s turn", () => {
    pending();
  });
});
