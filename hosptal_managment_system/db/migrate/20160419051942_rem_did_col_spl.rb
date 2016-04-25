class RemDidColSpl < ActiveRecord::Migration
  def change
  	remove_column :spealities, :did
  end
end
