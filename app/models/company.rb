class Company < ApplicationRecord
  has_many :departments
  has_many :employees
end
