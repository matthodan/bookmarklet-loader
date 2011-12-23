class BookmarkletLoader
  constructor: (@id, @script, @style) ->
    @add() if @find(@id) == null
  find: -> document.getElementById(@id)
  remove: -> document.body.removeChild(@find(@id))
  add: ->
    root = document.createElement 'div'
    root.id = @id
    if @script != null
      script = document.createElement 'script'
      script.type = 'text/javascript'
      script.charset = 'UTF-8'
      script.src = @script + '?' + rand
      root.appendChild script
    if @style != null
      style = document.createElement 'link'
      style.href = @style
      style.rel = 'stylesheet'
      style.type = 'text/css'
      root.appendChild style
    document.body.appendChild root

# Update the following code for your app
loader = new BookmarkletLoader 'yourApp',
  'http://example.com/your-app.js',
  'http://example.com/your-app.css'
