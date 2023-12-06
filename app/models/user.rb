class User < ApplicationRecord

  has_many :posts

validates :email, presence:true, uniqueness:true, length: {minimum:5, maximum:100}
validates :username, presence:true, uniqueness:true ,  length: {minimum:4, maximum:15}
validates :password, presence:true , length: {minimum:6, maximum:20}
end
