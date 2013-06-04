class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :ads
  has_many :favorites
  has_many :ads, :through => :favorites #not sure if needed

end
