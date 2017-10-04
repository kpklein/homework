class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :username
      t.integer :post_id
      t.text :body

      t.timestamps
    end
  end
end
