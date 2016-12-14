require 'spec_helper'

describe Apartment do
  let (:apartment) { Apartment.new("200 E 32nd st", "New York City", "NY", 10016, 3500, Date.parse("2013/10/15"), Date.parse("2015/10/15"))}
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
  end

  describe "#full?" do
    
  end
end
