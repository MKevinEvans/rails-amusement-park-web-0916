class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  validates :password_digest, presence: true

  has_secure_password


  def mood

    self.happiness > self.nausea ? "happy" : "sad" unless admin
  end

end
