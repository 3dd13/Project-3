class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :challenges, dependent: :destroy
  has_one :summit, class_name: Challenge, inverse_of: :challenge_as_summit
end
