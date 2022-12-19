class Techskill < ApplicationRecord
      has_many :firms
      has_many :employees, through: :firms
end
