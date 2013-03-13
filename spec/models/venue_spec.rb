require 'spec_helper'

describe Venue do
  describe '.new' do
    it 'creates an instance of a venue' do
      venue = Venue.new
      expect(venue).to be_an_instance_of(Venue)
    end

    it 'has name' do
      venue = Venue.new(name: 'Roseland')
      expect(venue.name).to eq 'Roseland'
    end
  end

  describe '.create' do
    it 'has an id' do
      venue = Venue.create(name: 'Roseland')
      expect(venue.id).to_not be nil
    end
  end

end