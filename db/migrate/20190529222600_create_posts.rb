class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :profile, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end