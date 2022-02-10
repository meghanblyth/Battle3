feature "Reduces Hp" do
  scenario "Reduce player 2's hp by 10 when attacked" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Trushna's hp is down to 5"
  end
end