class Student < ApplicationRecord
  has_many :klasses
  has_many :tutors, through: :klasses
end
