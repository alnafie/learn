class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :ads
  has_many :comments
  has_many :photos
  has_many :favorites
  #has_many :ads, :through => :favorites #not sure if needed

  has_many :favorite_ads, :through => :favorites, :source => :ad


end
