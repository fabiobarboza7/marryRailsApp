class AddReligionToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :religion, foreign_key: true
  end
end
