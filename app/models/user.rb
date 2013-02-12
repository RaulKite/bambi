class User < ActiveRecord::Base
  devise :cas_authenticatable, :rememberable, :trackable, :lockable

  attr_accessible :email, :username, :password, :password_confirmation, :remember_me, :listasum

  has_many :requests
  has_many :peticionsoftwares

  def admin?
    ['chapu@um.es','aha2@um.es','raul@um.es','alfonso@um.es'].include?(self.username)
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
    # logger.debug self.to_yaml
    super && permitido?
  end

end
