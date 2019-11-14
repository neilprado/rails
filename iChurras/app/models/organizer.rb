class Organizer < ApplicationRecord
    has_many :guests
    has_and_belongs_to_many :tasks

    accepts_nested_attributes_for :guests, reject_if: :all_blank, allow_destroy: true
end
