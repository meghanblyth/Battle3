feature 'Testing player 2 hp' do
  scenario "Show player 2's hp" do
    visit('/')
    fill_in :player_1_name, with: 'Ali'
    fill_in :player_2_name, with: 'Trushna'
    click_button 'Submit'

    expect(page).to have_content "Trushna's hp to be 5"
  end
end