require "spec_helper"
# These UTF-8 characters will be useful for making different hands:
# '♦', '♣', '♠', '♥'

RSpec.describe Card do
  # Your tests here
  let(:card) { Card.new('A', '♣') }

  describe '.new' do

    it 'should contain a suit' do
      expect(card.suit).to eq('♣')
    end

    it 'should have a face value' do
      expect(card.face).to eq('A')
    end
  end

  describe '#face_type' do
    it 'should have a face type' do
      expect(card.type).to eq('ace')
    end
  end
end
