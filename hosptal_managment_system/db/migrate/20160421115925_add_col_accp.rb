class AddColAccp < ActiveRecord::Migration
  def change
  	change_column :students, :accept, :text
  end
end
