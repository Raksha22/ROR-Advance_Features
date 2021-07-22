class CreateMuseums < ActiveRecord::Migration[6.1]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :categories
      t.text :description

      t.timestamps
    end
  end
end
