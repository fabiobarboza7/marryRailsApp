class CreateReligions < ActiveRecord::Migration[5.2]
  def change
    create_table :religions do |t|
      t.string :title

      t.timestamps
    end
  end
end
