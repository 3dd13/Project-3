$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET'
      dataType: 'json'
      success: (data) ->
        $('#content').html(templateFunc(data))

  showPage '/api/users', project3.usersTemplate
  
  # Home/main page  
  $('section').on 'click', 'ul li span', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/users/#{id}", project3.userTemplate
        
  # Redirect to main page
  $('section').on 'click', '#back-to-users', (e) ->
    e.preventDefault()
    showPage '/api/users', project3.usersTemplate

  # Redirect from challenge-milestones to the user page
  $('section').on 'click', '#back-to-challenges', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/users/#{id}", project3.userTemplate

  # Redirect to edit user form
  $('section').on 'click', 'ul li button.edit', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/users/#{id}", project3.userEditTemplate

  # Edit/update user
  $('section').on 'submit', 'form', (e) ->
    e.preventDefault()
    id = $(@).data('id')
    $.ajax "/api/users/#{id}",
      type: 'PATCH'
      data: $(@).serialize()
      dataType: 'text'
      success: (x) ->
        console.log('Success!')
        showPage '/api/users', project3.usersTemplate

  # Delete user
  $('section').on 'click', 'ul li button.delete', (e) ->
    id = $(@).parent().data('id')
    $.ajax "/api/users/#{id}",
      type: 'DELETE'
      success: ->
        showPage '/api/users', project3.usersTemplate
        
  # Display the selected challenge and all the milestones under that challenge
  $('#content').on 'click','#my_milestones', (e) ->
    console.log "Clicked your milestones"
    id = $(@).data('id')
    user_id = $(@).data('user-id')
    showPage "/api/users/#{user_id}/challenges/#{id}", project3.challengeTemplate

  
  # Show add form
  $('section').on 'click', 'button.show-add-form', (e) ->
    $('#content').html project3.userAddTemplate({})
  
  # To create a new user through form input
  $('section').on 'click', '#create_user', (e)->
    name = $("#user-name").val()
    gender = $("#gender").val()
    if (name == "" || gender == "") 
      console.log "Name or gender field is empty"
    else
      $.ajax '/api/users.json',
        type: 'POST'
        contentType: 'application/json'
        dataType: 'text'
        data: JSON.stringify({user: {name: name, gender: gender}})
        success: (x) ->
          console.log('Success!')
          showPage '/api/users', project3.usersTemplate

  # To create a new challenge through form input
  $('#content').on 'click', '#create_challenge', (e) ->
    id = $(@).data('id')
    goal = $("input#goal").val()
    accomplish_by = $("input#accomplish_by").val()
    challenge_status = $("input#challenge_status").val()
    console.log goal
    console.log id
    console.log accomplish_by
    console.log challenge_status
    if (goal == "")
      console.log "Please enter a goal"
    else
      $.ajax "/api/users/#{id}/challenges",
        type: 'POST'
        contentType: 'application/json'
        dataType: 'text'
        data: JSON.stringify({
          challenge: {
            goal: goal, 
            accomplish_by: accomplish_by, 
            is_completed: challenge_status.toUpperCase() == "YES" ? true : false
          }
        })
        success: (data) ->
          console.log data
          newChallenge = '<div class="challenge-detail-slot">
            <ul>
              <li>Challenge: ' + goal + '</li>
              <li>Accomplish by: ' + accomplish_by + '</li>
              <li>Completed? ' + challenge_status + '</li>
            </ul>
          </div><br/>
          <button class="btn btn-success" id="complete_challenge">Complete Challenge</button>
          '

          $( ".challenge-detail-slot" ).append( newChallenge );


  # To mark a challenge as complete
  $('#content').on 'click', '#complete_challenge', (e) ->
    id = $(@).data('id')
    user_id = $(@).data('user-id')
    $.ajax "/api/challenges/#{id}/complete",
      type: 'PUT'
      dataType: 'json'
      success: (data) ->
        console.log "Challenge #{id} marked complete!"
        showPage "/api/users/#{user_id}", project3.userTemplate


  # To mark a milestone as complete
  $('#content').on 'click', '.complete_milestone', (e) ->
    id = $(@).data('id')
    challenge_id = $(@).data('challenge-id')
    user_id = $(@).data('user-id')
    console.log id
    console.log challenge_id
    console.log user_id
    $.ajax "/api/milestones/#{id}/complete",
      type: 'PUT'
      dataType: 'json'
      success: (data) ->
        console.log "Milestone #{id} marked complete!"
        # showPage "/api/users/#{user_id}/challenges/#{challenge_id}", project3.challengeTemplate
        $("#complete_milestone"+id).hide()


  
