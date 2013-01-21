class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :cas_authenticatable, :rememberable, :trackable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation, :remember_me, :listasum
  # attr_accessible :title, :body

  has_many :requests
  has_many :peticionsoftwares


  def admin?
#    self.username == 'chapu@um.es' || self.username == 'raul@um.es' || self.username == 'aha2@um.es'
    ['chapu@um.es','raul@um.es','aha@um.es'].include?(self.username)
  end


  def cas_extra_attributes=(extra_attributes)
    extra_attributes.each do |name, value|
      case name.to_sym
        when :listas
          self.listasum = value
          self.save
      end
    end
  end

  def permitido?
    self.listasum.include?("ccalculo.inf")
  end


  def active_for_authentication?
    # Comment out the below debug statement to view the properties of the returned self model values.
    # logger.debug self.to_yaml
    super && permitido?
  end

end
