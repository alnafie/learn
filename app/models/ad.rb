class Ad < ActiveRecord::Base
  attr_accessible :make

  belongs_to :user
  has_many :comments
  has_many :photos
  has_many :favorites
  has_many :users, :through => :favorites #not sure if this is needed

end
