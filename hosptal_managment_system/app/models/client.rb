class Client < ActiveRecord::Base

 scope :created_before, ->(time) { where("created_at < ?", time) }
 has_many :appointments
 has_many :patients, through: :appointments
 has_and_belongs_to_many :doctors
  
end
