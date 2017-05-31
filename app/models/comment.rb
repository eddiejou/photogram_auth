class Comment < ApplicationRecord

  #Associations
  belongs_to :photos
  belongs_to :user

  #Validations
  validates :user_id, :presence => true
  validates :photo_id, :presence => true
  validates :body, :presence => true
end
