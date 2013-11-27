class Milestone < ActiveRecord::Base
  belongs_to :challenge
  acts_as_list scope: :challenge

  def complete!
    self.is_done = true
    self.save
  end  
end
