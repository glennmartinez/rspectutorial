require_relative 'spec_helper'
 
 include Capybara::DSL
# Capybara.current_driver = :webkit
 	describe "linktest", :type => :request  do
 	 	it "logs in to confluence" do 
 	 		visit 'http://localhost:8090'
			fill_in 'Username', :with => 'admin'
			fill_in 'Password', :with => 'admin'
			click_button 'Log In'
			# page.should have_content('Welcome to confluence')

			click_link 'Add Page'
			click_button 'Next'
			sleep 2
			find_field('content-title').click 
			fill_in 'title', :with => 'This is my title page'
			sleep 2
			find('#wysiwygTextarea_ifr').click 

				within_frame('wysiwygTextarea_ifr')  do
			      sleep 4
			      editor = page.find_by_id('tinymce')
			      editor.native.send_keys('rwewdedeeeeeeeeeeeewewewew')
			    end
			#  browser = page.driver.browser
			# browser.switch_to('#wysiwygTextarea_ifr')
			# editor = page.find_by_id('tinymce').node
			# editor.send_keys("testing testing")
		 end

	end

# end