require 'spec_helper'
require 'spec_helper'

describe "Static pages" do

  describe "FAQ page" do

    it "should have the content 'FAQ'" do
      visit '/static_pages/faq'
      expect(page).to have_content('FAQ')
    end

    it "should have the title 'FAQ'" do
      visit '/static_pages/faq'
      expect(page).to have_title("Project2 for CS369 | FAQ")
    end
  end

  describe "Blog page" do

    it "should have the content 'Blog'" do
      visit '/static_pages/blog'
      expect(page).to have_content('Blog')
    end
    it "should have the title 'Blog'" do
      visit '/static_pages/blog'
      expect(page).to have_title("Project2 for CS369 | Blog")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Project2 for CS369 | About Us")
    end
  end
end