require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

# YOUR TEST CODE HERE
RSpec.describe "perimeter" do
  it "returns 20 for a square of width 5" do
    expect(perimeter(5)).to eq(20)
  end
  it "returns 30 for a rectangle with width 5 and length 10" do
    expect(perimeter(5,10)).to eq(30)
  end
end

RSpec.describe "average" do
  it "returns a mean of 5 from the set (0, 5, 10)" do
    expect(average([0, 5, 10])).to eq(5)
  end
end

RSpec.describe "rankings" do
  it "returns an ordered list with rankings of 3 named students" do
    expect(rankings(["Judy", "Garland", "Mary"])).to eq("1. Judy\n2. Garland\n3. Mary\n")
  end
end

RSpec.describe "greet" do
  it "returns 'Hola George!' if George chooses Spanish" do
    expect(greet("George", 'spanish')).to eq("Hola George!")
  end
  it "returns 'Ciao George!' if George chooses Italian" do
    expect(greet("George", 'italian')).to eq("Ciao George!")
  end
  it "returns 'Bonjour George!' if George chooses French" do
    expect(greet("George", 'french')).to eq("Bonjour George!")
  end
  it "returns 'Hi George!' if George chooses nothing" do
    expect(greet("George")).to eq("Hi George!")
  end
end

RSpec.describe "create_puzzle" do
  it "returns 'b _ n g o' if the word is bingo and the guess is bongo" do
    expect(create_puzzle("bingo", 'bongo')).to eq("b _ n g o")
  end
end

RSpec.describe "divisible_by_three" do
  it "returns 'false' for the number 73'" do
    expect(divisible_by_three(73)).to eq(false)
  end
end

RSpec.describe "perfect_square?" do
  it "returns 'false' for the number 73'" do
    expect(perfect_square?(73)).to eq(false)
  end
  it "returns 'number must be greater than or equal to one' for the number 0'" do
    expect{ perfect_square?(0) }.to raise_error(ArgumentError, "number must be greater than or equal to one")
  end
end
