require_relative 'spec_helper'
require_relative 'create_page'

 include Capybara::DSL

 	@javascript
	describe "linktest", :type => :request  do
	 include Capybara::DSL
	 	it "logs in to confluence" do 
		  mytest = Testpage.new

		  mytest.createpage
		 end

	end

# end