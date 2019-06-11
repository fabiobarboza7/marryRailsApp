class Like < ApplicationRecord
  belongs_to :profile
  belongs_to :likeable, polymorphic: true, dependent: :destroy

	validates :likeable_id, uniqueness: { scope: :profile }
end
