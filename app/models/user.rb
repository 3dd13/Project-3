class User < ActiveRecord::Base
  has_many :challenges, dependent: :destroy
  has_one :summit, class_name: Challenge, inverse_of: :user_as_summit
end
