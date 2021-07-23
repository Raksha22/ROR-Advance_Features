class Employee < ApplicationRecord
  has_and_belongs_to_many :companies

  VALID_GENDER = %w(male female)

  scope :by_gender, ->(gender) do
    if VALID_GENDER.include?(gender)
      Rails.cache.fetch("employees_#{gender}") { puts 'evaluating...' ; where gender: gender }
    else
      Rails.cache.fetch('all_employees') { puts 'evaluating...' ; all }
    end
  end
end
