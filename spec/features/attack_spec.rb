require 'capybara'
require 'capybara/rspec'

feature 'attacking moves' do
  scenario 'i can Punch player 2' do
    sign_in_and_play
    click_button 'Punch'
    expect(page).to have_content 'John punched Not John!'
  end
  scenario 'player 2 can punch player 1' do
    sign_in_and_play
    click_button 'Punch'
    click_button 'Punch'
    expect(page).to have_content 'Not John punched John!'
  end
  scenario 'player 1 can kick player 2' do
    sign_in_and_play
    click_button 'Kick'
    expect(page).to have_content 'John kicked Not John'
  end
end
