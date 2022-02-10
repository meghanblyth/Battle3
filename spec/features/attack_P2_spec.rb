feature 'Testing attack player 2' do
    scenario "Player 1 attacks Player 2 and confirms" do
      sign_in_and_play
      click_button "Attack" 
      expect(page).to have_content "Ali attacked Trushna" 
    end
end