class Request < ActiveRecord::Base
  attr_accessible :date, :description, :title, :owner
  belongs_to :owner, :class_name => User

  validates :owner, :presence => true
end
