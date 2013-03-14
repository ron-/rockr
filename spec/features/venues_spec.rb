require 'spec_helper'

describe 'Venues' do

  describe 'GET /' do
    it 'displays new venue button' do
      visit root_path
      page.should have_link('New Venue')
    end
  end
  describe 'GET /venues/new' do
    it 'displays the new venue form', :js => true do
      visit root_path
      click_link('New Venue')
      page.should have_button('Cancel')
      page.should have_button('Create Venue')
    end
  end

  describe 'POST /venues' do
    it 'creates a new venue', :js => true do
      visit root_path
      click_link('New Venue')
      fill_in('Name', :with => 'Roseland')
      click_button('Create Venue')
      expect(Venue.first.name).to eq 'Roseland'
      page.should_not have_button('Create Subscriber')
    end
  end

  describe 'JS cancel_venue_form()' do
    it 'removes the create venue form', :js => true do
      visit root_path
      click_link('New Venue')
      click_button('Cancel')
      page.should_not have_button('Create Venue')
    end
  end

end