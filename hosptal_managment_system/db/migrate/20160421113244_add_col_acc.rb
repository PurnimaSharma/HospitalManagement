class AddColAcc < ActiveRecord::Migration
  def change
  	add_column :students, :accept, :boolean
  end
end
