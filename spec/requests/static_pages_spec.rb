require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help Page" do
    before { visit contact_path }

    it { should have_content('Help') }
    it { should have_title(full_title('')) }
  end

  describe "About Us Page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title(full_title('')) }
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('')) }
  end
end
