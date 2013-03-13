require 'spec_helper'


describe Venue do
  describe '.new' do
    it 'creates an instance of a venue' do
      venue = Venue.new
      expect(venue).to be_an_instance_of(Venue)
    end
  end
end