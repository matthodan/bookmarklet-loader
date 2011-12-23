class BookmarkletLoader
  constructor: (@id, @script, @style) ->
    # Uncomment the following line if you would like Bookmarklet Loader to automatically remove and
    # reload your code when the Bookmarklet Loader is clicked twice between pageloads.  Default
    # behavior is to do nothing.
    # @remove(@find(@id)) while @find(@id) != null
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
      script.src = @script
      root.appendChild script
    if @style != null
      style = document.createElement 'link'
      style.href = @style
      style.rel = 'stylesheet'
      style.type = 'text/css'
      root.appendChild style
    document.body.appendChild root

loader = new BookmarkletLoader 'yourApp',
  'http://example.com/your-app.js',
  'http://example.com/your-app.css'
