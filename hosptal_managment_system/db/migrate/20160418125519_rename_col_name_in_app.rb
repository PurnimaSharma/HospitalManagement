class RenameColNameInApp < ActiveRecord::Migration
  def change
  	rename_column :appointments, :cid, :client_id
  	rename_column :appointments, :did, :doctor_id
  end
end
