class ChangeColAcc < ActiveRecord::Migration
  def change
  	change_column :students, :accept, :text
  end
end
