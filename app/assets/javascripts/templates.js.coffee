@project3 =
  usersTemplate: Handlebars.compile "
    <h3>Users</h3>
    <ul class=\"list-group\">
      {{#each users}}
        <li class=\"list-group-item\" data-id=\"{{id}}\">
          <span>{{name}}</span><br/>
          <button class=\"btn btn-default edit\">Edit</button>
          <button class=\"btn btn-default delete\">Delete</button>
        </li>
      {{/each}}
    </ul>


    <button class=\"show-add-form btn btn-success\">Add new User</button>
  "

  userAddTemplate: Handlebars.compile "
    <form action=\"\">
      <input id=\"user-name\" type=\"text\" placeholder=\"Full Name\">
      <input id=\"gender\" type=\"text\" placeholder=\"Male / Female\">
    </form>


    <button class=\"btn btn-success\"id=\"create_user\">Add User</button>
  "

  userTemplate: Handlebars.compile "
    {{#each users}}
      <p class=\"user_name\">{{name}}</p>  
      <p>{{gender}}</p>

      <hr/>

      <p>Challenges</p>
      
      <div class=\"challenge-detail-slot\">
        {{#each challenges}}
          <ul>
            <li>Challenge: {{goal}}</li>
            <li>Accomplish by: {{accomplish_by}}</li>
            <li>Completed? 
            {{#if is_completed}}
              Yes
            {{else}}
              No
            {{/if}}</li>
            <li>Completed date: {{completed_on}}</li>
          </ul>
          <button id=\"my_milestones\" data-user-id=\"{{user_id}}\" data-id=\"{{id}}\" class=\"btn btn-primary\">Click here to see your milestones for this challenge</button>
          <br/>
          {{#unless is_completed}}
            <button class=\"btn btn-success\" id=\"complete_challenge\" data-user-id=\"{{user_id}}\" data-id=\"{{id}}\">Complete Challenge</button>
          {{/unless}}
        {{/each}}
        <hr/>
      </div>     

      <form action=\"\">
        <input id=\"goal\" type=\"text\" placeholder=\"Set your goal\">
        <input id=\"accomplish_by\" type=\"date\" placeholder=\"When do you plan to complete this goal?\">
        <p>Challenge completed?</p>
        <input id=\"challenge_status\" type=\"text\" placeholder=\"Yes/No\"> 
      </form>

      <button id=\"create_challenge\" data-id=\"{{id}}\" class=\"btn btn-success\">Create a new challenge</button><br/><br/>

      <button id=\"back-to-users\" class=\"btn btn-default\"><a href=\"#\">Back to Homepage</a></button>
    {{/each}}
  "



  userEditTemplate: Handlebars.compile "
    {{#each users}}
      <form id=\"user-edit-form\" data-id=\"{{id}}\">
        <input type=\"text\" name=\"user[name]\" value=\"{{name}}\">
        <input type=\"submit\" value=\"Save Changes\">
      </form>
      
    {{/each}}
    <br/>
    <button id=\"back-to-users\" class=\"btn btn-default\"><a href=\"#\">Back to Homepage</a></button>
  "

  challengeTemplate: Handlebars.compile "
    {{#each challenges}}
      Goal: {{goal}}
      <ul class=\"list-group\">
        {{#each milestones}}
          <li class=\"list-group-item\" id=\"milestone_id\">
            {{step}}<br/>
            {{#unless is_done}}
              <button id=\"complete_milestone{{id}}\" data-user-id=\"{{challenge.user_id}}\" data-challenge-id=\"{{challenge_id}}\" data-id=\"{{id}}\" class=\"complete_milestone btn btn-success\">Complete Milestone</button>
            {{/unless}}
          </li>
        {{/each}}
      </ul>
      
    {{/each}}
    <br/>
    <button id=\"back-to-challenges\" class=\"btn btn-default\" data-id=\"{{user_id}}\">Back to your challenges</button><br/>
    <button id=\"back-to-users\" class=\"btn btn-default\">Back to Homepage</button>
  "

  challengeEditTemplate: Handlebars.compile "
    {{#each challenges}}
      <form id=\"user-edit-form\" data-id=\"{{id}}\">
        <input type=\"text\" name=\"user[name]\" value=\"{{name}}\">
        <input type=\"submit\" value=\"Save Changes\">
      </form>
      
    {{/each}}
    <br/>
    <button id=\"back-to-users\" class=\"btn btn-default\"><a href=\"#\">Back to Homepage</a></button>
  "

