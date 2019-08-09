class Post < ApplicationRecord
    validates_presence_of :posts_name, :description_posts, :user_id
end
