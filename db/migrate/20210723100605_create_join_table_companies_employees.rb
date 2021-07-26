class CreateJoinTableCompaniesEmployees < ActiveRecord::Migration[6.1]
  def change
    create_join_table :companies, :employees do |t|
      t.index [:company_id, :employee_id]
      # t.index [:employee_id, :company_id]
    end
  end
end
