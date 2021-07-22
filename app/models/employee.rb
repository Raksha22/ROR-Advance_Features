class Employee < ApplicationRecord
  VALID_GENDER = %w(male female)

  scope :by_gender, ->(gender) do
    if VALID_GENDER.include?(gender)
      where gender: gender
    else
      all
    end
  end
end
