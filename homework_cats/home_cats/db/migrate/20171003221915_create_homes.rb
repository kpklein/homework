class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :address
      t.integer :flap_size

      t.timestamps
    end
  end
end
