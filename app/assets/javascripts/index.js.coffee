$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (d) ->
        $('#content').html(templateFunc(d))

  showPage '/api/users', project3.usersTemplate
    
  $('#content').on 'click', 'ul li', (e) ->
    id = $(@).data('id')
    showPage "/api/users/#{id}", project3.userTemplate
        
  $('#content').on 'click', '#back-to-users', (e) ->
    e.preventDefault()
    showPage '/api/users', project3.usersTemplate
        
  # $('#content').on 'click', '#my_milestones', (e) ->
  #   id = $(@).data('id')
  #   showPage "/api/users/#{id}/challenges", project3.challengesTemplate

  
  ##### To create a new user through form input
  # $('#create_user').on 'click', ->

  #   name = $("#user-name").val()
  #   if (name == "") {console.log "DONT submit the ajax "}
  #   else
  #     $.ajax '/api/users',
  #     type: 'POST',
  #     contentType: 'application/json',
  #     data: JSON.stringify({"user": {"name": name, "gender":"Male"}})
  #     success: (data) ->
  #       console.log data







  
