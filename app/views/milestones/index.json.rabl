object false

child @milestones, object_root: false do

  attributes :id, :step, :complete_by, :comment, :repeat, :repeat_freq

  # node(:href, :if => lambda { (|milestone| @user) && (|milestone| @challenge) }) do |milestone|
  #   user_challenge_milestone_url(@user, @challenge, milestone)
  # end

  node(:href, :if => lambda { |milestone| @user }) do |milestone|
    user_milestone_url(@user, milestone)
  end

  # node :href do |milestone|
  #   user_challenge_milestone_url(@user, @challenge, milestone)
  # end

  # node :links do |milestone|
  #   { 
  #     challenge: user_challenge_url(@user, @challenge),
  #     challenges: user_challenges_url(@user),
  #     user: user_url(@user),
  #     users: users_url
  #   }
  # end

end