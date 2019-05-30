class AddProfileToReligions < ActiveRecord::Migration[5.2]
  def change
    add_reference :religions, :profile, foreign_key: true
  end
end
