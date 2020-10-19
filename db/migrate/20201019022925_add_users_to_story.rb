class AddUsersToStory < ActiveRecord::Migration[6.0]
  def change
    add_reference :stories, :users, null: false, foreign_key: true
  end
end
