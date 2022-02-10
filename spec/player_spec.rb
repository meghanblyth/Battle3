require_relative '../lib/player.rb'

describe Player do
  subject(:meghan) { Player.new("Meghan") }
  subject(:ali) { Player.new("Ali") }

  describe "#name" do
    it "should return a name" do
      expect(meghan.name).to eq "Meghan"
    end
  end

  describe '#hit_points' do
    it 'has default hit points' do
      expect(ali.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
    
  describe "#attack" do
    it "allows a player to attack another player" do
      expect(meghan.attack).to receive(:take_damage)
    end
  end

end