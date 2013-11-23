User.destroy_all

users = User.create([
  {
    name: "Dev",
    age: 26,
    gender: "Male"
  },
  {
    name: "Indira",
    age: 21,
    gender: "Female"
  },
  {
    name: "Alexander",
    age: 27,
    gender: "Male"
  },
  {
    name: "Neda",
    age: 22,
    gender: "Female"
  }
])

challenges = Challenge.create([
  {
    goal: "Climb Aconcagua by June next year",
    accomplish_by: '30-Jun-2014',
    is_completed: false,
    completed_on: '',
    user: users[0],
    milestones: Milestone.create([
      {
        step: "Do vertical training twice a week starting from Jan to Mar 2014",
        complete_by: "31-Mar-2014",
        is_done: false,
        comment: "",
        repeat: false,
        how_many_time: 1
      }
    ])
  },
  {
    goal: "Climb Everest in 5 years",
    user: users[0],
    user_as_summit: users[0],
    milestones: Milestone.create([
      {
        step: "Climb Mount Hkakabo Razi in Burma"
      },
      {
        step: "Do the seven summits"
      }
    ])
  },
  {
    goal: "Compete in a triathlon",
    user: users[1],
    user_as_summit: users[1],
    milestones: Milestone.create([
      {
        step: "Run 10kms 3 times a week from 1st week of Jan 2014."
      }
    ])
  },
  {
    goal: "Do a border to border cross country challenge across Finnish Lapland",
    user: users[2],
    user_as_summit: users[2],
    milestones: Milestone.create([
      {
        step: "Do skiing practice daily for the next 3 months"
      }
    ])
  },
  {
    goal: "Master Korean and Japanese in by the end of this year",
    user: users[3],
    user_as_summit: users[3],
    milestones: Milestone.create([
      {
        step: "Practice daily conversation in Korean and Japanese with Kim and Ikuya"
      }
    ])
  }
])