class User < ActiveRecord::Base
  has_many :challenges, dependent: :destroy
  has_one :summit, class_name: Challenge, inverse_of: :challenge_as_summit
end
