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

  describe '#receive_damage' do
    it 'reduces the player hit points by -10' do
      expect { ali.receive_damage }.to change { ali.hit_points }.by(-10)
    end
  end
end
