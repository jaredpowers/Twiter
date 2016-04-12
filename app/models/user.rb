class User < ActiveRecord::Base
  has_many :twits

  validates :username, presence: true
end
