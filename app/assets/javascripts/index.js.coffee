$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
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

  # Redirect to edit user form
  $('section').on 'click', 'ul li button.edit', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/users/#{id}", project3.userEditTemplate

  # Edit/update user
  $('section').on 'submit', 'form', (e) ->
    e.preventDefault()
    id = $(@).data('id')
    $.ajax "/api/users/#{id}",
      type: 'PATCH',
      data: $(@).serialize(),
      success: (x) ->
        console.log('Success!')
        showPage '/api/users', project3.usersTemplate

  # Delete user
  $('section').on 'click', 'ul li button.delete', (e) ->
    id = $(@).parent().data('id')
    $.ajax "/api/users/#{id}",
      type: 'DELETE',
      success: ->
        showPage '/api/users', project3.usersTemplate
        
  # Display the selected challenge and all the milestones under that challenge
  $('#content').on 'click','#my_milestones', (e) ->
    console.log "Clicked your milestones"
    user_id = $(@).data('user-id')
    id = $(@).data('id')
    showPage "/api/users/#{user_id}/challenges/#{id}", project3.challengeTemplate

  
  
  # To create a new user through form input
  $('section').on 'click', '#create_user', (e)->
    name = $("#user-name").val()
    gender = $("#gender").val()
    # if (name == "" || gender == "") 
    #   console.log "Name or gender field is empty"
    # else
    $.ajax '/api/users',
      type: 'POST',
      contentType: 'application/json',
      data: JSON.stringify({user: {name: name, gender: gender}})
      success: (data) ->
        console.log data

  # # To create a new challenge through form input
  # $('#create_challenge').on 'click', (e) ->
  #   id = $(@).data('id')
  #   goal = $("input#goal").val()
  #   accomplish_by = $("input#accomplish_by").val()
  #   challenge_status = $("input#challenge_status").val().toUpperCase()
  #   console.log goal
  #   console.log id
  #   console.log accomplish_by
  #   console.log challenge_status
  #   if (goal == "")
  #     console.log "Please enter a goal"
  #   else
  #     $ajax "/api/users/#{id}/challenges",
  #       type: 'POST',
  #       contentType: 'application/json',
  #       data: JSON.stringify({"challenge": 
  #         {
  #           goal: goal, 
  #           accomplish_by: accomplish_by, 
  #           is_completed: challenge_status == "YES" ? true : false 
  #         } 
  #       }),
  #       success: (data) ->
  #         console.log data



  # #NEW REVIEW SUBMIT FUNCTION
  # $('#new_review_submit').on 'click', (e) ->
  #   title = $('#new_restaurant_name').val()
  #   id = $(@).data('id')

  #   if (title=="") 
  #     console.log("title is empty");
  #   else
  #     $.ajax '/api/users/1/reviews', 
  #       type: 'POST',
  #       contentType: 'application/json',
  #       data: JSON.stringify({ "review": { "restaurant": title, "body": "Give me some chili!" }}),
  #       success: (data) ->
  #         console.log(data)



  
