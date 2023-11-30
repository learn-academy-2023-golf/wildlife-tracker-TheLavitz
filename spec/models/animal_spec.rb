require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'Requires name and binomial' do
    test = Animal.create(

    )
    expect(test.errors[:name]).to_not be_empty
    expect(test.errors[:binomial]).to_not be_empty
  end
  it 'Requires name and binomial to be different' do
    test = Animal.create(
      name: 'bob',
      binomial: 'bob'
    )
    expect(test.errors[:base]).to_not be_empty
  end
  it 'Requires name and binomial to be unique' do
    test1 = Animal.create(
      name: 'jim',
      binomial: 'tim'
    )
    test2 = Animal.create(
      name: 'jim',
      binomial: 'tim'
    )
    expect(test2.errors[:name]).to_not be_empty
    expect(test2.errors[:binomial]).to_not be_empty
  end
end
