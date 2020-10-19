class AddUsersToChats < ActiveRecord::Migration[6.0]
  def change
    add_reference :chats, :users, null: false, foreign_key: true
  end
end
