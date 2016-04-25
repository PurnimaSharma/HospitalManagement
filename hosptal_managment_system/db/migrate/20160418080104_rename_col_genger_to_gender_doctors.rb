class RenameColGengerToGenderDoctors < ActiveRecord::Migration
  def change
  	rename_column :doctors, :genger, :gender
  end
end
