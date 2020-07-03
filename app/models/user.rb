class User < ApplicationRecord
    validates :username, length: {in: 4..20}, presence:true, uniqueness:true
    validates :password, length: {in: 4..20}, presence:true
    validates :email, format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}, presence:true, uniqueness:true
end
