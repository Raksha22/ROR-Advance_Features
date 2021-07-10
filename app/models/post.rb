class Post < ApplicationRecord
	default_scope ->{ where(published_at: false).order(created_at: :desc) }
end
