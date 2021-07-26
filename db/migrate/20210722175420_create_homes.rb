class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
