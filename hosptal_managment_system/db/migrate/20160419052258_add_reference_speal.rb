class AddReferenceSpeal < ActiveRecord::Migration
  def change
  	 add_reference :spealities, :doctor, index: true, foreign_key: true
  end
end
