class RemClientId < ActiveRecord::Migration
  def change
  	remove_column :appointments, :client_id
  	remove_column :appointments, :doctor_id
  end
end
