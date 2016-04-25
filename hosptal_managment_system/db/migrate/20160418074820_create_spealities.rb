class CreateSpealities < ActiveRecord::Migration
  def change
    create_table :spealities do |t|
      t.string :name
      t.integer :did
      t.timestamps null: false
    end
  end
end
