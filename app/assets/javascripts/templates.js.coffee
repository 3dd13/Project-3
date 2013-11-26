@project3 =
  usersTemplate: Handlebars.compile "
    <ul>
      {{#each users}}
        <li data-id=\"{{id}}\">
          <span>{{name}}</span>
          <button class=\"edit\">Edit</button>
          <button class=\"delete\">Delete</button>
        </li>
      {{/each}}
    </ul>


    <form action=\"\">
      <input id=\"user-name\" type=\"text\" placeholder=\"Full Name\">
      <input id=\"gender\" type=\"text\" placeholder=\"Male / Female\">
    </form>


    <button id=\"create_user\">Add new User</button>
  "

  userTemplate: Handlebars.compile "
    {{#each users}}
      <p class=\"user_name\">{{name}}</p>  
      <p>{{gender}}</p>

      <hr/>

      <p>Challenges</p>
      {{#each challenges}}
        <div class=\"challenge-slot\">
          <button class=\"btn btn-success\">Complete Challenge</button>
          <ul>
            <li>Challenge: {{goal}}</li>
            <li>Accomplish by: {{accomplish_by}}</li>
            <li>Completed? {{is_completed}}</li>
            <li>Completed date: {{completed_on}}</li>
          </ul>
          <p id=\"my_milestones\" data-user-id=\"{{user_id}}\" data-id=\"{{id}}\" class=\"btn btn-primary\">Click here to see your milestones for this challenge</p>
        </div>

        <hr/>
      {{/each}}

      <form action=\"\">
        <input id=\"goal\" type=\"text\" placeholder=\"Set your goal\">
        <input id=\"accomplish_by\" type=\"text\" placeholder=\"When do you plan to complete this goal?\">
        <p>Challenge completed?</p>
        <input type=\"checkbox\" name=\"challenge_status\" value=\"Yes\">Yes<br>
        <input type=\"checkbox\" name=\"challenge_status\" value=\"No\">No 
      </form>

      <button id=\"create_challenge\" class=\"btn btn-success\">Create a new challenge</button>

      <p><a id=\"back-to-users\" href=\"#\">Back to Users</a></p>
    {{/each}}
  "

  userEditTemplate: Handlebars.compile "
    {{#each users}}
      <form id=\"user-edit-form\" data-id=\"{{id}}\">
        <input type=\"text\" name=\"user[name]\" value=\"{{name}}\">
        <input type=\"submit\" value=\"Save Changes\">
      </form>
    {{/each}}
  "

  challengeTemplate: Handlebars.compile "
    {{#each challenges}}
      Goal: {{goal}}
      <ul>
        {{#each milestones}}
          <li>
            {{step}}
            <button class=\"btn btn-success\">Complete Milestone</button>
          </li>
        {{/each}}
      </ul>
    {{/each}}
  "
