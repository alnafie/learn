class Comment < ActiveRecord::Base
  attr_accessible :text

  belongs_to :ad

end
