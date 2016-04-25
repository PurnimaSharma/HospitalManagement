class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
       t.string :name
    	t.text :password
    	t.integer :age
    	t.text :genger
    	t.integer :phoneno
    	t.string :address
      t.timestamps null: false
    end
  end
end
