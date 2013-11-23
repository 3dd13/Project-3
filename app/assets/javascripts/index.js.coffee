$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (d) ->
        $('#content').html(templateFunc(d))
    
  $('#content').on 'click', 'ul li', (e) ->
    id = $(@).data('id')
    showPage "/api/users/#{id}", arBlank.userTemplate
        
  $('#content').on 'click', '#back-to-users', (e) ->
    e.preventDefault()
    showPage '/api/users', arBlank.usersTemplate
        
  showPage '/api/users', arBlank.usersTemplate


# $ ->
#   $('section').on 'click', 'ul li', (e) ->
#     id = $(@).data('id')
#     $.ajax "/api/users/#{id}",
#       type: 'GET',
#       dataType: 'json',
#       success: (data) ->
#         source = $('#user-template').html()
#         template = Handlebars.compile(source)
#         output = template(data.users[0])
#         $('#content').html(output)
        
  
#   $.ajax '/api/users',
#     type: 'GET',
#     dataType: 'json',
#     success: (data) ->
#       # Get the template from the script element
#       source = $('#users-template').html()
      
#       # Compile the template to a JS function
#       template = Handlebars.compile(source)
      
#       # Call the template function and pass in
#       # the data to return the html
#       output = template(data)
      
#       # Insert that html into the section element
#       $('#content').html(output)