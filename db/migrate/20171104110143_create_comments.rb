class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user
      t.text :body
      t.integer :rating
      t.references :post
      t.timestamps
    end
  end
end
