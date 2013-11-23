collection @milestones

attributes :id, :goal, :accomplish_by, :is_completed, :completed_on

node :href do |milestone|
  user_challenge_milestone_url(@user, milestone)
end

node :links do |milestone|
  {
    user: user_url(@user),
    challenge: user_challenge_url(@challenge)
  }
end
