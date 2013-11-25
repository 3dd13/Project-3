class Milestone < ActiveRecord::Base
  belongs_to :challenge
  acts_as_list scope: :challenge
end
