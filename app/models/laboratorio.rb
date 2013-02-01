class Laboratorio < ActiveRecord::Base

  attr_accessible :description, :name
  has_and_belongs_to_many :peticionsoftwares

  validates :name, :presence => true
  validates :description, :presence => true

  def to_s
    name
  end
end
