class Comment < ApplicationRecord
    has_many :posts
    has_many :users, :through =>  :posts
    belongs_to :users
    belongs_to :posts
end
