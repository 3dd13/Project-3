object false

child @users, object_root: false do

  attributes :id, :name, :gender

  node :href do |user|
    user_url(user)
  end

  node :links do |user|
    {
      challenges: user_challenges_url(user),
      users: users_url
    }
  end

  node :challenges do |user|
    user.challenges
  end

end