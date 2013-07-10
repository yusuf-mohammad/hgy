require 'spec_helper'


describe "StaticPages" do

  let(:base_title) {"notes app |"}

  describe "Contact Page" do

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} contact")
    end

    it "should have content" do
      visit '/static_pages/contact'
      page.should have_content('contact')
    end
  end


	describe "Home page" do

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title} home")
    end

    it "should have the h1 'Notes app'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'notes app')
    end


		it "should have the content 'Simple note recording site'" do
			visit '/static_pages/home'
			page.should have_content('Simple note recording site')
		end
	end

  describe "Help page" do

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} help")
    end

    it "should have h1 Help" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'help')
    end

    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_content('help')
    end
  end

  describe "About page" do
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} about")
    end

    it "should have h1 about" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'about us')
    end
    it "should have the content 'about us'" do
      visit '/static_pages/about'
      page.should have_content('about us')
    end
  end

end
