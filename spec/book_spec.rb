require 'spec_helper'

describe Book do
	
 include Capybara::DSL

	before :each do

		@book = Book.new "Title", "Author", :category
	end

	describe "#new" do
		it "takes three parameters and returns a Book object" do
			@book.should be_an_instance_of Book
		end
	end

	describe "#title" do
	    it "returns the correct title" do
	        @book.title.should eql "Title"
	    end
	end

	describe "#author" do
	    it "returns the correct author" do
	        @book.author.should eql "Author"
	    end
	end

	describe "#category" do
    	it "returns the correct category" do
     	   @book.category.should eql :category
    	end
	end

	describe "login in", :type => :request do

		it "logs in to confluence" do 
			visit 'http://localhost:8090'
			fill_in 'Username', :with => 'admin'
			fill_in 'Password', :with => 'admin'
			click_button 'Log In'
			page.should have_content('Welcome to Confluence')
		end
	end
end