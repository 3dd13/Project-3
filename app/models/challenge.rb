class Challenge < ActiveRecord::Base
  belongs_to :user
  has_many :milestones, -> { order("position ASC") }, dependent: :destroy
  belongs_to :challenge_as_summit, class_name: User, inverse_of: :summit
end
