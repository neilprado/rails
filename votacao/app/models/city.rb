class City < ApplicationRecord
    has_one :mayor
    has_many :councilors
    has_many :votes

    accepts_nested_attributes_for :councilors, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :mayor, reject_if: :all_blank, allow_destroy: true
end
