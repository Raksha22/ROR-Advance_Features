class Post < ApplicationRecord
  default_scope { where(published: true) }
end
