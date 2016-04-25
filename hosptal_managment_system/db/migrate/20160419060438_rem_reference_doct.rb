class RemReferenceDoct < ActiveRecord::Migration
  def change
  	remove_reference :doctors, :speality, index: true, foreign_key: true
  end
end
