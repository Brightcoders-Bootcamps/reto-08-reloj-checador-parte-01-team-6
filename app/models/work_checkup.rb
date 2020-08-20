class WorkCheckup < ApplicationRecord
  validates :private_number, presence: true
  validates :employee_id, presence: true

  belongs_to :employee
end
