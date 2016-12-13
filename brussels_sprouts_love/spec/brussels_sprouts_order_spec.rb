require 'spec_helper'


describe BrusselsSproutsOrder do
  let(:order) { BrusselsSproutsOrder.new(40) }

  describe '#initialize' do
    it 'takes a number of launchers as an argument' do
        expect(order.launchers).to eq(40)
    end

  end

  describe '#add_bill' do
    it 'takes an argument of the bill amount and return true' do
      expect(order.add_bill(4000)).to eq(true)
    end
    it 'adds the bill to the order' do
      order.add_bill(4000)
      expect(order.bill_amt).to eq(4000)
    end
  end

  describe '#each_launcher_total_owed' do
    it 'correctly divides up the bill' do
      order.add_bill(4000)
      expect(order.each_launcher_total_owed).to eq(100)
    end
  end

end
