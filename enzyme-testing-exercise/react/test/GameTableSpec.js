/* jshint esversion: 6 */
import 'GameTable.js';

describe('GameTable', () => {
  let wrapper;
  // write (shallow) tests here for the GameTable stateless Component and don't
  // forget to remove pending()
  beforeEach(() => {
    jasmineEnzyme();
    wrapper = shallow(<GameTable />);
    // add set up data as needed here
    // create a variable assigned to your shallow rendered component
  });

  it('should have the specified inital state', () => {
    pending();
  });

  it('should render an p tag containing a message with the current turn', () => {
    pending();
  });

  it('should render a table with three rows (<tr>)', () => {
    pending();
  });

  it('should render first row with three columns (<td>)', () => {
    pending();
  });
});
