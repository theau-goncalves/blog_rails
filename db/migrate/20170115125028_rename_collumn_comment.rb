class RenameCollumnComment < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |t|
      t.rename :contenu, :content
    end 
  end
end
