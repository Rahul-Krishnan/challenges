require 'spec_helper'

describe Occupant do
  let (:human) { Occupant.new("James", "Bond")}

  describe ".new" do
    it "has a first name that is readable" do
      expect(human.first_name).to eq("James")
    end

    it "has a last name that is readable" do
      expect(human.last_name).to eq("Bond")
    end
  end
end
