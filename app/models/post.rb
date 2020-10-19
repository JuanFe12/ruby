class Post < ApplicationRecord
    has_many :likes
    has_many :comments
    belongs_to :users
    belongs_to :likes
    belongs_to :comments

end
