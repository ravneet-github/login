require 'rails_helper'

RSpec.feature "Users", type: :feature do
	#spec for creating new user
  context 'create new user' do
  	before(:each) do
  		visit new_user_registration_path
  		within('form') do
  			fill_in 'Email',  with: 'jack@gmail.com'
  			fill_in 'Password',  with: '123456'
  			
  		end
  	end
  	scenario "should be successful" do  		
  		within('form') do  			
  			fill_in 'Password confirmation',  with: '123456'
  		end
  		click_button 'Sign up'
  		expect(page).to have_content('Hello')
  	end

  	scenario "should fail" do  		
   		click_button 'Sign up'
  		expect(page).to have_content('Password confirmation doesn\'t match Password')
  	end
  end
  	
end
	