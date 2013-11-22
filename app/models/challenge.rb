class Challenge < ActiveRecord::Base
  belongs_to :user
  has_many :milestones, dependent: :destroy
  belongs_to :user_as_summit, class_name: User, inverse_of: :summit
end
