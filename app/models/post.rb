class Post < ApplicationRecord
  default_scope { where(published: true) }
  belongs_to :admin_user
end
