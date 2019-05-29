class AddProfileToAddress < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :profile, foreign_key: true
  end
end
