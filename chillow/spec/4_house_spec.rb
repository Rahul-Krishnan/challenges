require 'spec_helper'

describe House do
  let (:house) { House.new("200 E 32nd st", "New York City", "NY", 10016, 1_250_000)}

  describe ".new" do
    it "has an address" do
      expect(house.address).to eq("200 E 32nd st")
    end

    it "has a city" do
      expect(house.city).to eq("New York City")
    end

    it "has a state" do
      expect(house.state).to eq("NY")
    end

    it "has a zip code" do
      expect(house.zip).to eq(10016)
    end

    it "has an asking price" do
      expect(house.price).to eq(1_250_000)
    end
  end
end
