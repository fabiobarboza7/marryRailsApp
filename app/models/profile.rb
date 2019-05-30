class Profile < ApplicationRecord

  belongs_to :user
  has_one :address, dependent: :destroy
  belongs_to :religion, optional: true
  validates_uniqueness_of :user_id
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :religion

  has_many :likes
  has_many :likes, as: :likeable
	has_many :posts


  GENDER = [
    "Male",
    "Female"
  ]
end
