class User < ActiveRecord::Base

  has_secure_password

  has_many :shoes

  validates :username, length: { in: 6..20 }, uniqueness: true,
                        :presence => true
  validates :password, :presence => true,
                        :on => [:create, :update],
                        :allow_nil => true
end
