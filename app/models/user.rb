class User < ApplicationRecord
    has_many :storys
    has_many :posts
    has_many :likes, :through =>  :posts
    has_many :comments, :through =>  :posts
    has_many :chats
    has_many :chatgroups
end
