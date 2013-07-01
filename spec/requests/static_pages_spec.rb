require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Notes app | Home")
    end

    it "should hav ethe h1 'Notes app'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Notes app')
    end


		it "should have the content 'Simple note recording site'" do
			visit '/static_pages/home'
			page.should have_content('Simple note recording site')
		end
	end

  describe "Help page" do

    it "should have h1 Help" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end

end
