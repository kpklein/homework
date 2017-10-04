class CreateCatHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :cat_homes do |t|
      t.integer :cat_id
      t.integer :home_id

      t.timestamps
    end
  end
end
