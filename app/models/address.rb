class Address < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :profile

  COUNTRY = [
    "Brazil",
    "USA"
  ]
end
