class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text     "contenu"
      t.references :user
      t.references :post
      t.timestamps
    end
  end
end
