require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'Requires latitude, longitude, and date' do
    test = Sighting.create(

    )
    expect(test.errors[:latitude]).to_not be_empty
    expect(test.errors[:longitude]).to_not be_empty
    expect(test.errors[:date]).to_not be_empty
  end
end
