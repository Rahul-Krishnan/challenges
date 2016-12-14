require 'spec_helper'

describe Box do
  let (:human) { Occupant.new("Julia", "Childs")}
  let (:box) { Box.new(human) }


  describe ".new" do
    it "has an owner" do
      expect(box.owner.first_name).to eq("Julia")
      expect(box.owner.last_name).to eq("Childs")
    end
  end
end
