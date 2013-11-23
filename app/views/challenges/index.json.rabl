collection @challenges

attributes :id, :goal, :accomplish_by, :is_completed, :completed_on

node :href do |challenge|
  user_challenge_url(@user, challenge)
end

node :links do |challenge|
  {
    user: user_url(@user)
  }
end
