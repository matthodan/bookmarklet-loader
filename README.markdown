# Bookmarklet Loader

  Bookmarklet Loader is a template [bookmarklet](http://en.wikipedia.org/wiki/Bookmarklet 'Bookmarklet') that injects a .js and .css link into the current page.

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

  You may be able to update the compiled example and save yourself the time of installing CoffeeScript.  Don't forget to URL encode whatever you update!

  Drag this link to your bookmarks bar and click on the new bookmark to try Bookmarklet Loader.  You'll need to view page source to see the changes-- look for a div with the id 'yourApp'.

  <a href="javascript:(function(){var%20BookmarkletLoader%2C%20loader%3B%0ABookmarkletLoader%20%3D%20(function()%20%7B%0A%20%20function%20BookmarkletLoader(id%2C%20script%2C%20style)%20%7B%0A%20%20%20%20this.id%20%3D%20id%3B%0A%20%20%20%20this.script%20%3D%20script%3B%0A%20%20%20%20this.style%20%3D%20style%3B%0A%20%20%20%20if%20(this.find(this.id)%20%3D%3D%3D%20null)%20this.add()%3B%0A%20%20%7D%0A%20%20BookmarkletLoader.prototype.find%20%3D%20function()%20%7B%0A%20%20%20%20return%20document.getElementById(this.id)%3B%0A%20%20%7D%3B%0A%20%20BookmarkletLoader.prototype.remove%20%3D%20function()%20%7B%0A%20%20%20%20return%20document.body.removeChild(this.find(this.id))%3B%0A%20%20%7D%3B%0A%20%20BookmarkletLoader.prototype.add%20%3D%20function()%20%7B%0A%20%20%20%20var%20root%2C%20script%2C%20style%3B%0A%20%20%20%20root%20%3D%20document.createElement('div')%3B%0A%20%20%20%20root.id%20%3D%20this.id%3B%0A%20%20%20%20if%20(this.script%20!%3D%3D%20null)%20%7B%0A%20%20%20%20%20%20script%20%3D%20document.createElement('script')%3B%0A%20%20%20%20%20%20script.type%20%3D%20'text%2Fjavascript'%3B%0A%20%20%20%20%20%20script.charset%20%3D%20'UTF-8'%3B%0A%20%20%20%20%20%20script.src%20%3D%20this.script%3B%0A%20%20%20%20%20%20root.appendChild(script)%3B%0A%20%20%20%20%7D%0A%20%20%20%20if%20(this.style%20!%3D%3D%20null)%20%7B%0A%20%20%20%20%20%20style%20%3D%20document.createElement('link')%3B%0A%20%20%20%20%20%20style.href%20%3D%20this.style%3B%0A%20%20%20%20%20%20style.rel%20%3D%20'stylesheet'%3B%0A%20%20%20%20%20%20style.type%20%3D%20'text%2Fcss'%3B%0A%20%20%20%20%20%20root.appendChild(style)%3B%0A%20%20%20%20%7D%0A%20%20%20%20return%20document.body.appendChild(root)%3B%0A%20%20%7D%3B%0A%20%20return%20BookmarkletLoader%3B%0A%7D)()%3B%0Aloader%20%3D%20new%20BookmarkletLoader('yourApp'%2C%20'http%3A%2F%2Fexample.com%2Fyour-app.js'%2C%20'http%3A%2F%2Fexample.com%2Fyour-app.css')%3B}());">Example Bookmarklet Link</a>

  Contact me if you have any questions-- [Matt Hodan blog](http://blog.matthodan.com).
