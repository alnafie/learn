class Ad < ActiveRecord::Base
  attr_accessible :make, :comments_attributes

  belongs_to :user
  has_many :comments
  has_many :photos
  has_many :favorites
  
  #has_many :users, :as => :likers, :through => :favorites #not sure if this is needed
  #has_many :users, :through => :favorites # a many-to-many relationship

  has_many :favorite_users, :through => :favorites, :source => :user 	# SUCCESS!!

  accepts_nested_attributes_for :comments


end
