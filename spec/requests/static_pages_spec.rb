require 'spec_helper'

describe "Static pages" do
  
	describe "Home page" do
		
		it "should have the content 'Sample App'" do

			visit 'http://localhost:3000/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "should the the base title" do
			visit "/static_pages/home"
			page.should have_selector('title', 
								:text => "Ruby on Rails Tutorial Sample")
		end	

		it "should not have a custom page titel" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
			
		end
	end

	describe "Help page" do
		
		it "should have the content 'Help'" do

			visit 'http://localhost:3000/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should the the right title" do
			visit "/static_pages/help"
			page.should have_selector('title', 
								:text => "Ruby on Rails Tutorial Sample | Help")
		end	
	end
	
	describe "About page" do
			
		it "should have the content 'About Us'" do

			visit 'http://localhost:3000/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end

		it "should the the right title" do
		visit "/static_pages/about"
		page.should have_selector('title', 
							:text => "Ruby on Rails Tutorial Sample | About Us")
		end	
	end

	describe "Contact page" do
			
		it "should have the h1 'Contact Us'" do

			visit 'http://localhost:3000/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact Us')
		end

		it "should the the right title" do
		visit "/static_pages/contact"
		page.should have_selector('title', 
							:text => "Ruby on Rails Tutorial Sample | Contact Us")
		end	
	end

end
