class Profile < ApplicationRecord
  belongs_to :user
  has_one :address
  validates_uniqueness_of :user_id
  accepts_nested_attributes_for :address

  GENDER = [
    "Male",
    "Female"
  ]
end
