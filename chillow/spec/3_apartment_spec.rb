require 'spec_helper'

describe Apartment do
  let (:apartment) { Apartment.new("200 E 32nd st", "New York City", "NY", 10016, 3500, Date.parse("2013/10/15"), Date.parse("2015/10/15"), 2, []) }
  let (:busy_apartment) { Apartment.new("10 Charles st", "New York City", "NY", 10014, 4500, Date.parse("2012/02/15"), Date.parse("2016/02/15"), 0, []) }
  let (:human) { Occupant.new("Julia", "Childs")}

  describe ".new" do
    it "has an address" do
      expect(apartment.address).to eq("200 E 32nd st")
    end

    it "has a city" do
      expect(apartment.city).to eq("New York City")
    end

    it "has a state" do
      expect(apartment.state).to eq("NY")
    end

    it "has a zip code" do
      expect(apartment.zip).to eq(10016)
    end

    it "has rental cost" do
      expect(apartment.rent).to eq(3500)
    end

    it "has a lease start date" do
      expect(apartment.start_date).to eq(Date.parse("2013/10/15"))
    end

    it "has a lease end date" do
      expect(apartment.end_date).to eq(Date.parse("2015/10/15"))
    end

    it "has a number of rooms free" do
      expect(apartment.rooms_free).to eq(2)
    end
  end

  describe "#full?" do
    it "checks if the apartment has any rooms free" do
      expect(apartment.full?).to eq(false)
      expect(busy_apartment.full?).to eq(true)
    end
  end

  describe "#add_roommate" do
    it "adds a new Occupant to the apartment" do
      #binding.pry
      apartment.add_roommate(human)
      expect(apartment.current_occupants_array[0]).to eq(human)
      expect(apartment.rooms_free).to eq(1)
    end
  end

  describe "#remove_roommate" do
    it "removes a known Occupant from the apartment" do
      apartment.add_roommate(human)
      apartment.remove_roommate(human)
      expect(apartment.current_occupants_array).not_to include(human)
      expect(apartment.rooms_free).to eq(2)
    end
  end
end
