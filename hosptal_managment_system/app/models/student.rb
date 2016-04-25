class Student < ActiveRecord::Base
  validates :name, presence: { message: " can't be blank"}
  validates :address, presence: { message: " can't be blank"}
  validates :password, presence: { message: " can't be blank "}
  validates :phoneno, presence: { message: " can't be blank"}, 
            :numericality => true
  validates :gender, presence: { message: " should be selected"}
  validates :age ,presence: { message: " can't be blank"}
  validates :accept, acceptance: { message: " the terms "}
end
