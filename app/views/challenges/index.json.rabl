collection @challenges

attributes :id, :goal, :accomplish_by, :is_completed, :completed_on

node :href do |challenge|
  user_challenge_url(@user, challenge)
end

node :links do |challenge|
  {
    milestones: user_challenge_milestones_url(@user, challenge),
    challenges: user_challenges_url(@user),
    user: user_url(@user),
    users: users_url
  }
end
