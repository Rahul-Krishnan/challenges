class BrusselsSproutsOrder
  attr_reader :launchers
  attr_accessor :bill_amt

  def initialize(launchers)
    @launchers = launchers
    @bill_amt = 0
  end

  def add_bill(amount)
    @bill_amt += amount
    true
  end

  def each_launcher_total_owed
    @bill_amt/@launchers
  end


end
