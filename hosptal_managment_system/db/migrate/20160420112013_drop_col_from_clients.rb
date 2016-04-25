class DropColFromClients < ActiveRecord::Migration
  def change
  	remove_column :clients, :accept
  	remove_column :clients, :fname
  end
end
