class DropColAcc < ActiveRecord::Migration
  def change
  	remove_column :students, :accept
  end
end
