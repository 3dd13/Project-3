User.destroy_all
Challenge.destroy_all
Milestone.destroy_all

users = User.create([
  {
    name: "Amiko",
    gender: "Female"
  },
  {
    name: "Dev",
    gender: "Male"
  },
  {
    name: "Alexander",
    gender: "Male"
  },
  {
    name: "Karen",
    gender: "Female"
  }
])

challenges = Challenge.create([
  {
    goal: "Go from a pedestrian to peloton",
    accomplish_by: '31-Dec-2014',
    is_completed: false,
    completed_on: '',
    user: users[0],
    challenge_as_summit: users[0],
    milestones: Milestone.create([
      {
        step: "Move to a cycling friendly city for work",
        complete_by: "31-Mar-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Get a road bike and join a professional cycling club",
        complete_by: "30-Apr-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Train to participate in a coast ride or a mountain ride",
        complete_by: "31-Dec-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      }
    ])
  },
  {
    goal: "Climb Aconcagua",
    accomplish_by: '31-Dec-2014',
    is_completed: false,
    completed_on: '',
    user: users[1],
    challenge_as_summit: users[1],
    milestones: Milestone.create([
      {
        step: "Identify the best time for the climb",
        complete_by: "31-Jan-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Find friends to join",
        complete_by: "31-Jan-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Source for sponsorships",
        complete_by: "31-Mar-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Cross-fit/high-intensity training for overall physical conditioning",
        complete_by: "30-Jun-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Do 1 or 2 smaller peaks in Indonesia, Nepal or Myanmar for altitude conditioning",
        complete_by: "30-Jun-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Make all travel arrangements a month prior to the climb",
        complete_by: "",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      }
    ])
  },
  {
    goal: "Compete in a triathlon",
    accomplish_by: '31-Dec-2014',
    is_completed: false,
    completed_on: '',
    user: users[2],
    challenge_as_summit: users[2],
    milestones: Milestone.create([
      {
        step: "Register for Iron Man triathlon.",
        complete_by: "31-Mar-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Run 10kms 3 times a week starting from 1st week of Jan 2014",
        complete_by: "31-Mar-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Swim twice a week starting from Jan 2014 and reach a minimum of 50 laps per swim by Mar-2014.",
        complete_by: "31-Mar-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Cycle twice a week starting from Jan 2014",
        complete_by: "31-Mar-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Do combination training every other day alternating between these three combinations - swim/cycle, swim/run, cycle/run",
        complete_by: "30-Jun-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Do a triathlon practice for 1/3 the distance covered in the actual triathlon",
        complete_by: "31-Jul-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 3
      }

    ])
  },
  {
    goal: "Ski cross-country across Austrian Tyrol.",
    accomplish_by: '31-Oct-2013',
    is_completed: true,
    completed_on: '15-Oct-2013',
    user: users[3],
    milestones: Milestone.create([
      {
        step: "Plan for all the 7 different ski routes.",
        complete_by: "31-Mar-2013",
        is_done: true,
        milestone_comment: "Research on the routes completed and decided to skip the Waldloipe route",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Complete the Ischgl route.",
        complete_by: "31-Oct-2013",
        is_done: true,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Complete the Mathon Loipe route.",
        complete_by: "31-Oct-2013",
        is_done: true,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Complete the Mathon Loipe route.",
        complete_by: "31-Oct-2013",
        is_done: true,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Complete the Tschaffein Loipe route.",
        complete_by: "31-Oct-2013",
        is_done: true,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Complete the Galtür Wirl Loipe route.",
        complete_by: "31-Oct-2013",
        is_done: true,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Complete the Skiwanderweg Silvretta – Bielerhöhe route.",
        complete_by: "31-Oct-2013",
        is_done: true,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Complete the Skiwanderweg Zeinis route.",
        complete_by: "31-Oct-2013",
        is_done: true,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      }
    ])
  },
  {
    goal: "29,029 Vertical Feet, Two Poles, One Dream. Sometimes it takes traveling to both Poles and the Roof of the World to see just a little deeper into yourself.",
    accomplish_by: '31-Dec-2015',
    is_completed: false,
    completed_on: '',
    user: users[3],
    challenge_as_summit: users[3],
    milestones: Milestone.create([
      {
        step: "Climb Everest.",
        complete_by: "31-Dec-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Journey to the North Pole.",
        complete_by: "31-Dec-2015",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Journey to the South Pole.",
        complete_by: "31-Dec-2015",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      }
    ])
  }
])