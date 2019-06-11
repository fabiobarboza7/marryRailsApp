class Like < ApplicationRecord
  belongs_to :profile, dependent: :destroy
  belongs_to :likeable, polymorphic: true

	validates :likeable_id, uniqueness: { scope: :profile }
end
