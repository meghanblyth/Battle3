require_relative '../lib/player.rb'

describe Player do
  subject(:meghan) { Player.new("Meghan") }
  describe "#name" do
    it "should return a name" do
      expect(meghan.name).to eq "Meghan"
    end
  end
end