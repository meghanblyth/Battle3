feature 'Testing attack player 2' do
  player_2 = Player.new("Meghan")

  scenario "Player 1 attacks Player 2 and confirms" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Ali attacked Trushna"
  end

  scenario "Player loses 10 hit points when attacked" do
    sign_in_and_play
    expect { player_2.receive_damage }.to change { player_2.hit_points }.by(-10)
  end
end
