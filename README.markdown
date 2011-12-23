# Bookmarklet Loader

  Bookmarklet Loader is a template [bookmarklet](http://en.wikipedia.org/wiki/Bookmarklet 'Bookmarklet') that injects a .js and .css link into the current page when run.

  You should only need to update this code:

  ```
  loader = new BookmarkletLoader 'yourApp',
    'http://example.com/your-app.js',
    'http://example.com/your-app.css'
  ```

  Bookmarklet Loader is written in CoffeeScript, however bookmarklets must be JavaScript and URL encoded.

  * To compile Bookmarklet Loader to JavaScript, you can either [install the CoffeeScript complier](http://jashkenas.github.com/coffee-script/#installation) or copy and paste Bookmarklet Loader into the [Try Coffeescript](http://jashkenas.github.com/coffee-script) tool.

  * Once you've compiled Bookmarklet Loader to JavaScript, you must URL encode the JavaScript
  	or it will not run as a bookmarklet.  I've found [Jason Miller's Instant Bookmarklet
  	Creator](http://jasonmillerdesign.com/Free_Stuff/Instant_Bookmarklet_Converter) useful for this puspose.  John Gruber also published [a script to make a bookmarklet](http://daringfireball.net/2007/03/javascript_bookmarklet_builder) on Daring Fireball that may be useful.

  Contact me if you have any questions at [my blog](http://blog.matthodan.com).

## Compiled Examples

  You may be able to update the compiled examples and save yourself the time of installing CoffeeScript.  Don't forget to URL encode whatever you update in the compiled examples!
