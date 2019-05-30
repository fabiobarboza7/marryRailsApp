class Like < ApplicationRecord
  belongs_to :profile, dependent: :destroy
  belongs_to :likeable, polymorphic: true # Padrão Rails G
end
