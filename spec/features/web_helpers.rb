def sign_in_and_play
  visit '/'
  fill_in('p1_name', with: 'John')
  fill_in('p2_name', with: 'Not John')
  click_button('Submit')
end

def super_punch
  19.times do
    click_button('Punch')
  end
end
