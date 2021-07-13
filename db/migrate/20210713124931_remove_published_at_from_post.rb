class RemovePublishedAtFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :published_at, :string
  end
end
