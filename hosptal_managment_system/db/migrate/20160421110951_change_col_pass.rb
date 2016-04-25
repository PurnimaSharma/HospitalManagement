class ChangeColPass < ActiveRecord::Migration
  def change
  	change_column :students, :password, :string
  end
end
