class Profile < ApplicationRecord

  belongs_to :user
  has_one :address, dependent: :destroy
  validates_uniqueness_of :user_id
  accepts_nested_attributes_for :address

  has_many :likes
  has_many :likes, as: :likeable
	has_many :posts


  GENDER = [
    "Male",
    "Female"
  ]
end
