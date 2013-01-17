class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :cas_authenticatable, :rememberable, :trackable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :requests


  def admin?
    self.username == 'chapu@um.es' || self.username == 'alfonso@um.es' || self.username == 'raul@um.es' || self.username == 'aha2@um.es'
  end
end
