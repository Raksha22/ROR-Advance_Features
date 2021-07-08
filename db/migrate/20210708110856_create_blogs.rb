class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.belongs_to :user
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
