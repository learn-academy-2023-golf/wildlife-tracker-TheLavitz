require 'rails_helper'

RSpec.describe "Animals", type: :request do
  describe "POST /animals" do
    it "doesn't create an animal without fields" do
      animal_params = {
        animal: {
          name: '',
          binomial: ''
        }
      }
    post '/animals', params: animal_params
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
    end
  end
end
