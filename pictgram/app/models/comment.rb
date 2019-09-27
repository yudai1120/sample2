class Comment < ApplicationRecord
  belongs_to :image 
  belongs_to :topic
  belongs_to :user
  validates :content, presence:true
  
end
