class AddCommentToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :comment, null: false
  end
end
