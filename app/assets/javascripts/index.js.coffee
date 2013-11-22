$ ->
  $.ajax '/api/users',
    type: 'GET',
    dataType: 'json',
    success: (data) ->
      source = $('#users-template').html()
      template = Handlebars.compile(source)
      output = template(data)
      $('#content').html(output)
