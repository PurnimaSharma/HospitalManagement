class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
        t.string :name
    	t.text :password
    	t.string :fname
    	t.integer :age
    	t.text :genger
    	t.integer :phoneno
    	t.string :address
        t.text :accept
      t.timestamps null: false
    end
  end
end
