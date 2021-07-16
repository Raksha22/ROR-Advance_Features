class AddColumnToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :published, :boolean
    add_column :posts, :rating, :float
  end
end
