class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :posts_name
      t.string :description_posts
      t.integer :user_id

      t.timestamps
    end
  end
end
