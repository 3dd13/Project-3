collection @milestones

attributes :id, :step, :complete_by, :comment, :repeat, :repeat_freq

node :href do |milestone|
  user_challenge_milestone_url(@user, @challenge, milestone)
end

node :links do |milestone|
  { 
    challenge: user_challenge_url(@user, @challenge),
    challenges: user_challenges_url(@user),
    user: user_url(@user),
    users: users_url
  }
end