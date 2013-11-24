$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (d) ->
        $('#content').html(templateFunc(d))
    
  $('#content').on 'click', 'ul li', (e) ->
    id = $(@).data('id')
    showPage "/api/users/#{id}", project3.userTemplate
        
  $('#content').on 'click', '#back-to-users', (e) ->
    e.preventDefault()
    showPage '/api/users', project3.usersTemplate
        
  showPage '/api/users', project3.usersTemplate