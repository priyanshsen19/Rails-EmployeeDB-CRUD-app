class Employee < ApplicationRecord
      has_many :firms
      has_many :techskills, through: :firms
      validates :emp_id, presence: true
      validates :emp_id, uniqueness:true
end
