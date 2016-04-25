class AddIndex < ActiveRecord::Migration
  def change
  	add_index :events_organizers, :event_id
  	add_index  :events_organizers, :organizer_id
  end
end
