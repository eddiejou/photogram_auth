class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  #Associations

  has_many :likes
  has_many :photos
  has_many :comments

  has_many :liked_photos, :through => :likes, :source => :photo

  #Validations
  validates :username, :presence => true, :uniqueness => true
end
