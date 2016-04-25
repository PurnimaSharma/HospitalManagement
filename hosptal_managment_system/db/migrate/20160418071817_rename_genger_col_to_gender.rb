class RenameGengerColToGender < ActiveRecord::Migration
  def change
  	rename_column :clients, :genger, :gender
  end
end
