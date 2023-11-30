class Animal < ApplicationRecord
    has_many :sightings
    accepts_nested_attributes_for :sightings
    validates :name, :binomial, presence: true
    validate :name_does_not_match_binomial
    validates :name, :binomial, uniqueness: true

    def name_does_not_match_binomial
        if name && binomial && name.downcase == binomial.downcase
            errors.add(:base, "Name and binomial should not be the same")
        end
    end
end
