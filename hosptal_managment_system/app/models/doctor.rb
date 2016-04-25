class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :clients, through: :appointments
  has_many :speality
  has_and_belongs_to_many :clients
end
