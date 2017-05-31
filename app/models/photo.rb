class Photo < ApplicationRecord
  #Associations

  belongs_to :user

  has_many :comments
  has_many :likes

  has_many :fans, :through => :likes, :source => :user

  #Validations
  validates :user_id, :presence => true

end
