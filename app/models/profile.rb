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

  def have_profile_likes?(user_profile)
    self.likes.where(profile: user_profile.profile).empty? ? true : false
  end

  def default_photo
    self.photo.empty? ? self.photo = "https://robohash.org/etfacereaperiam.png?size=300x300&set=set1" : self.photo
  end

end
