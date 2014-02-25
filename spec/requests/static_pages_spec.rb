require 'spec_helper'

describe "Static pages" do

  subject { page }

 shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "FAQ page" do
    before { visit faq_path }
    let(:heading)    { 'Welcome to project2' }
    let(:page_title) { 'FAQ' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { 'Welcome to project2' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Blog page" do
    before { visit blog_path }
    let(:heading)    { 'Welcome to project2' }
    let(:page_title) { 'Blog' }

    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit about_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "FAQ"
    expect(page).to have_title(full_title('FAQ'))
    click_link "Blog"
    expect(page).to have_title(full_title('Blog'))

    visit faq_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "FAQ"
    expect(page).to have_title(full_title('FAQ'))
    click_link "Blog"
    expect(page).to have_title(full_title('Blog'))
  
    visit blog_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "FAQ"
    expect(page).to have_title(full_title('FAQ'))
    click_link "Blog"
    expect(page).to have_title(full_title('Blog'))
  end
end