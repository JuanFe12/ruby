class AddPostsToLikes < ActiveRecord::Migration[6.0]
  def change
    add_reference :likes, :posts, null: false, foreign_key: false
  end
end
