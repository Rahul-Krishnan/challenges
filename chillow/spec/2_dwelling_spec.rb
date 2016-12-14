require 'spec_helper'

describe Dwelling do
  let (:dwelling) { Dwelling.new("200 E 32nd st", "New York City", "NY", 10016)}
  describe ".new" do
    it "has an address" do
      expect(dwelling.address).to eq("200 E 32nd st")
    end

    it "has a city" do
      expect(dwelling.city).to eq("New York City")
    end

    it "has a state" do
      expect(dwelling.state).to eq("NY")
    end

    it "has a zip code" do
      expect(dwelling.zip).to eq(10016)
    end
  end
end
