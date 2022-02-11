def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Ali'
  fill_in :player_2_name, with: 'Trushna'
  click_button 'Submit'
end
