class Post < ApplicationRecord

  belongs_to :user
  
  validates :title, presence:true, uniqueness:true
  validates :description, presence:true, uniqueness:true, length: {minimum:5, maximum:500}
end
