feature 'Testing name entering' do
  scenario 'Allow players to enter their name' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content 'Ali vs. Trushna'
  end
end
