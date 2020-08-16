class Employee < ApplicationRecord
  validates :name, presence:true
  validates :email, presence: true
  validates :position, presence:true
end
