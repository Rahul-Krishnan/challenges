/* jshint esversion: 6 */
import 'GameTable.js';

describe('GameTable', () => {
  let table,
      turn,
      selectCell,
      wrapper;
  // write (shallow) tests here for the GameTable stateless Component and don't
  // forget to remove pending()
  beforeEach(() => {
    jasmineEnzyme();
    wrapper = shallow(
      <GameTable
        table = {
          row1: { cell1: '', cell2: '', cell3: '' },
          row2: { cell1: '', cell2: '', cell3: '' },
          row3: { cell1: '', cell2: '', cell3: '' }
        },
        turn= 'X',
        selectCell= table.row1.cell1;
      />
    );
    // add set up data as needed here
    // create a variable assigned to your shallow rendered component
  });

  it('should have the specified inital state', () => {
    expect(wrapper.state()).toEqual({
      table: {
        row1: { cell1: '', cell2: '', cell3: '' },
        row2: { cell1: '', cell2: '', cell3: '' },
        row3: { cell1: '', cell2: '', cell3: '' }
      },
      turn: 'X'
    });
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
