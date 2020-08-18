class Employee < ApplicationRecord
  validates :email, presence: true
  validates_uniqueness_of :private_number
end
