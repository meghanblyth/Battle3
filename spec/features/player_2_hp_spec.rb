feature 'Testing player 2 hp' do
  scenario "Show player 2's hp" do
    sign_in_and_play
    expect(page).to have_content "Trushna's hp to be 15"
  end
end