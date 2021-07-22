class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :email
      t.string :gender
      t.integer :salary

      t.timestamps
    end
    add_index :employees, :email
  end
end
