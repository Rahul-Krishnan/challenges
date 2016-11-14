require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) { Airplane.new("cessna", 10, 100, 100) }

  describe "#initialization" do
    it "returns airplane type" do
      expect(my_plane.type).to eq("cessna")
    end
    it "returns airplane wing load" do
      expect(my_plane.wing_load).to eq(10)
    end
    it "returns airplane horsepower" do
      expect(my_plane.horsepower).to eq(100)
    end
    it "returns airplane fuel level" do
      expect(my_plane.fuel).to eq(100)
    end
  end

  describe "#start" do
    it "returns 'not enough fuel to start' if the fuel is below 5" do
      my_plane.fuel = 0
      expect(my_plane.start).to eq("not enough fuel to start")
    end
    it "returns 'airplane started' if the engine was off" do
      expect(my_plane.start).to eq("airplane started")
    end
    it "returns 'airplane already started' if the engine was on" do
      my_plane.start
      expect(my_plane.start).to eq("airplane already started")
    end
  end

  describe "#land" do
    it "returns 'not enough fuel to land' if the fuel is below 10" do
      my_plane.fuel = 5
      expect(my_plane.land).to eq("not enough fuel to land")
    end
    it "returns 'airplane not started yet' if the engine was off" do
      expect(my_plane.land).to eq("airplane not started yet")
    end
    it "returns 'airplane already on the ground' if the plane hasn't taken off" do
      my_plane.start
      expect(my_plane.land).to eq("airplane already on the ground")
    end
    it "returns 'airplane landed' if the plane was in the air" do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq("airplane landed")
    end
  end

  describe "#takeoff" do
    it "returns 'not enough fuel to take off' if the fuel is below 20" do
      my_plane.fuel = 10
      expect(my_plane.takeoff).to eq("not enough fuel to take off")
    end
    it "returns 'airplane not started yet' if the engine was off" do
      expect(my_plane.takeoff).to eq("airplane not started yet")
    end
    it "returns 'airplane launched' if the engine was on" do
      my_plane.start
      expect(my_plane.takeoff).to eq("airplane launched")
    end
  end
end
