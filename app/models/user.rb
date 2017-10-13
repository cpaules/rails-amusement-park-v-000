class User < ActiveRecord::Base
  # write associations here
  validates :name, uniqueness: true
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  def mood
    self.nausea > self.happiness ? "sad" : "happy"
  end

end
