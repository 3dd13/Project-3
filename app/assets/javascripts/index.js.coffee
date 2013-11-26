$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        $('#content').html(templateFunc(data))

  showPage '/api/users', project3.usersTemplate
    
  $('section').on 'click', 'ul li span', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/users/#{id}", project3.userTemplate
        
  $('section').on 'click', '#back-to-users', (e) ->
    e.preventDefault()
    showPage '/api/users', project3.usersTemplate

  $('section').on 'click', 'ul li button.edit', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/users/#{id}", project3.userEditTemplate

  $('section').on 'click', 'ul li button.delete', (e) ->
    id = $(@).parent().data('id')
    $.ajax "/api/users/#{id}",
      type: 'DELETE',
      success: ->
        showPage '/api/users', project3.usersTemplate
        
  $('#content').on 'click','#my_milestones', (e) ->
    console.log "Clicked your milestones"
    user_id = $(@).data('user-id')
    id = $(@).data('id')
    showPage "/api/users/#{user_id}/challenges/#{id}", project3.challengeTemplate

  
  $('section').on 'submit', 'form', (e) ->
    e.preventDefault()
    id = $(@).data('id')
    $.ajax "/api/users/#{id}",
      type: 'PATCH',
      data: $(@).serialize(),
      success: (x) ->
        console.log('Success!')
        showPage '/api/users', project3.usersTemplate


  ##### To create a new user through form input
  $('#create_user').on 'click', ->

    name = $("#user-name").val()
    gender = $("#gender").val()
    # if (name == "") 
    #   alert "No value entered"
    # else
    $.ajax '/api/users',
    type: 'POST',
    contentType: 'application/json',
    data: JSON.stringify({"user": {"name": name, "gender": gender}})
    success: (data) ->
      console.log data







  
