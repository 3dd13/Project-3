@project3 =
  usersTemplate: Handlebars.compile "
    {{#each users}}
      <ul>
        <li data-id=\"{{id}}\">{{name}}</li>
      </ul>
    {{/each}}
  "

  userTemplate: Handlebars.compile "
    {{#each users}}
      <p class=\"user_name\">{{name}}</p>  
      <p>{{gender}}</p>

      <p>Challenges</p>
      {{#each challenges}}
        <ul>
          <li>{{goal}}</li>
          <li>{{accomplish_by}}</li>
          <li>{{is_completed}}</li>
          <li>{{completed_on}}</li>
        </ul>
      {{/each}}

      <p><a id=\"back-to-users\" href=\"#\">Back to Users</a></p>
    {{/each}}
  "

  challengesTemplate: Handlebars.compile "
    <ul>
      {{#each challenges}}
        <li data-id=\"{{id}}\">{{goal}}</li>
        <li>{{is_completed}}</li>
      {{/each}}
    </ul>
  "
