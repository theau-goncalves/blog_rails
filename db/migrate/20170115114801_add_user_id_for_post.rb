class AddUserIdForPost < ActiveRecord::Migration[5.0]
  def change
    change_table :posts do |t|
      t.references :user
    end
  end
end
