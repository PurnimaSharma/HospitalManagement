class RenameColGengerStudents < ActiveRecord::Migration
  def change
  	rename_column :students, :genger, :gender
  end
end
