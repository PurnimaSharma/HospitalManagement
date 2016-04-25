class AddReferenceDoct < ActiveRecord::Migration
  def change
  	add_reference :doctors, :speality, index: true, foreign_key: true
  end
end
