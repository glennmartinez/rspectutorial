require 'spec_helper'

class Testpage

def createpage

	# describe "login in", :type => :request do

	# 		it "logs in to confluence" do 
				visit 'http://localhost:8090'
				fill_in 'Username', :with => 'admin'
				fill_in 'Password', :with => 'admin'
				click_button 'Log In'
				click_link 'Add Page'
				click_button 'Next'
				# find_field('title').visible?
				# find_field('wysiwygTextarea').visible?
				 # fill_in 'title', :with => 'This is my title page'
				  # editor = page.find_by_id('wysiwygTextarea_ifr')
				# browser = session.driver.browser
				# browser.switch_to.frame('wysiwygTextarea_ifr')
				 # editor.native.send_keys('tetetetetete')
				 # editor = page.find_field('tinymce')
				 # editor=document.getElementById('wysiwygTextarea_ifr').contentDocument.body
				# fill_in 'wysiwygTextarea', :with => 'Testing, testing 1, 2 3, adding some content'
				# page.execute_script("$('body').empty()")
				sleep 4


				within_frame('wysiwygTextarea_ifr')  do
			      sleep 4
			      editor = page.find_by_id('tinymce')
			      editor.native.send_keys('rwewdedeeeeeeeeeeeewewewew')
			    end
			    click_button 'Save'
 
	# 		end

	# end

end


end

