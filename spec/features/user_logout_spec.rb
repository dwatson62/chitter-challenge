require 'spec_helper'
require 'helpers/user_helpers'

feature 'A logged in user wants to logout' do

  before(:each) do
    User.create(email: 'test@test.com',
                password: '123',
                password_confirmation: '123',
                name: 'John',
                username: 'test_user1')
    login('test_user1', '123')
  end

  scenario 'from the main page' do
    visit '/main'
    expect(page).to have_content 'Welcome back John'
    click_button 'Logout'
    expect(page).to have_content 'Goodbye!'
    expect(page).to_not have_content 'Welcome John'
  end
end