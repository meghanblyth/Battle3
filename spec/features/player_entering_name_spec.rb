feature 'Testing name entering' do
  scenario 'Allow players to enter their name' do
    visit('/')
    fill_in :player_1_name, with: 'Ali'
    fill_in :player_2_name, with: 'Trushna'
    click_button 'Submit'

    save_and_open_page
    expect(page).to have_content 'Ali vs. Trushna'
  end
end
