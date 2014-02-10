require 'spec_helper'

describe 'Site pages' do
  describe 'Home page' do
    it "should have the content 'Milkrunner'" do
      visit '/pages/home'
      expect(page).to have_content('Milkrunner')
    end
  end
end
