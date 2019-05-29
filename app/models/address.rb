class Address < ApplicationRecord
  belongs_to :profile

  COUNTRY = [
    "Brazil",
    "USA"
  ]
end
