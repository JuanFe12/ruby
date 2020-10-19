class AddLikeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :like, null: false
  end
end
