class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
    	 t.string :name
    	t.text :password
    
    	t.integer :age
    	t.text :genger
    	t.integer :phoneno
    	t.string :address
        t.text :speality

      t.timestamps null: false
    end
  end
end
