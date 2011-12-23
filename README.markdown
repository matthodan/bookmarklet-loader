# Bookmarklet Loader

  Bookmarklet Loader is a template [bookmarklet](http://en.wikipedia.org/wiki/Bookmarklet 'Bookmarklet') that injects a .js and .css link into the current page.

  You should only need to update this code:

  ```
  loader = new BookmarkletLoader 'yourApp',
  'http://example.com/your-app.js',
  'http://example.com/your-app.css'
  ```

  Bookmarklet Loader is written in CoffeeScript, however bookmarklets must be JavaScript and URL encoded.  [CoffeeMarklet](http://johtso.github.com/CoffeeMarklet/) does a great job of converting CoffeeScript to bookmarklet-friendly JavaScript.

  You may be able to update the compiled example and save yourself the time of installing CoffeeScript.  Don't forget to URL encode whatever you update!

  Contact me if you have any questions-- [Matt Hodan blog](http://blog.matthodan.com).
