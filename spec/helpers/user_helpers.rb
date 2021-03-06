def sign_up(email = 'test@test.com',
            password = 'test123',
            password_confirmation = 'test123',
            name = 'John',
            username = 'test_user1')
  visit '/signup'
  fill_in 'email', with: email
  fill_in 'password', with: password
  fill_in 'password_confirmation', with: password_confirmation
  fill_in 'name', with: name
  fill_in 'username', with: username
  click_button 'Submit'
end

def login(username, password)
  visit '/'
  fill_in 'username', with: username
  fill_in 'password', with: password
  click_button 'Login'
end

def create_peep(peep)
  fill_in 'message', with: peep
  click_button 'Peep'
end