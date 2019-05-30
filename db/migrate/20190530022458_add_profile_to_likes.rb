class AddProfileToLikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :profile, foreign_key: true
  end
end
