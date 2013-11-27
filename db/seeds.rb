User.destroy_all
Challenge.destroy_all
Milestone.destroy_all

users = User.create([
  {
    name: "Amiko",
    email: "amiko.kayanuma@gmail.com",
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
  },
  {
    name: "Laurent",
    gender: "Male"
  },
  {
    name: "Kiyohide",
    gender: "Male"
  },
  {
    name: "Eric",
    gender: "Male"
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
  },
  {
    goal: "Climb the South Face of Shishapangma",
    accomplish_by: '1-Jun-2015',
    is_completed: false,
    completed_on: '',
    user: users[4],
    challenge_as_summit: users[4],
    milestones: Milestone.create([
      {
        step: "Do the climbs for a few of the the other 98 above 8000m peaks before attempting K2 and Shishapangma",
        complete_by: "31-Dec-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Do the K2 climb",
        complete_by: "31-Mar-2015",
        is_done: true,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      }
    ])
  },
  {
    goal: "Explore Siula Grande",
    accomplish_by: '31-Mar-2014',
    is_completed: false,
    completed_on: '',
    user: users[4],
    milestones: Milestone.create([
      {
        step: "Research about the experiences of Joe Simpson and Simon Yates about their experience of climbing the North Ridge and doing the descent",
        complete_by: "31-Dec-2013",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Learn more about climbing the glacier face",
        complete_by: "31-Jan-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Explore the option to Ski during the descent",
        complete_by: "28-Feb-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      }
    ])
  },
  {
    goal: "Ski two million vertical feet in a year starting from 1-Jan-2014",
    accomplish_by: '31-Dec-2014',
    is_completed: false,
    completed_on: '',
    user: users[5],
    challenge_as_summit: users[5],
    milestones: Milestone.create([
      {
        step: "Ski 71 different peaks in North and South America totalling two million vertical feet",
        complete_by: "31-Dec-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Plan to relocate to South America for 4 months to complete the skis in South America",
        complete_by: "31-Mar-2014",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      }
    ])
  },
  {
    goal: "Circumnavigate Ellesmere Island, Arctic Canada",
    accomplish_by: '30-Jun-2014',
    is_completed: false,
    completed_on: '',
    user: users[6],
    challenge_as_summit: users[6],
    milestones: Milestone.create([
      {
        step: "Plan all the details of the navigation and logistics in a month",
        is_done: false,
        milestone_comment: "",
        repeat: false,
        repeat_freq: 1
      },
      {
        step: "Complete the training by mid Mar 2014",
        complete_by: "15-Mar-2015",
        is_done: false,
        milestone_comment: "The circumnavigation could take anywhere between 30 days to 104 days. Hope for the best and plan for the worst and try to start the circumnavigation in late Mar to finish the journey in the summer months by early July.",
        repeat: false,
        repeat_freq: 1
      }
    ])
  },
])