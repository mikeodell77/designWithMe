class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password, :password_confirmation, :admin, :member,
                  :cell_phone, :first_name, :last_name, :home_phone, :industry,
                  :website

  validates_uniqueness_of :email
  validates_presence_of :email, :first_name, :last_name

  def name
    "#{first_name} #{last_name}"
  end
end
