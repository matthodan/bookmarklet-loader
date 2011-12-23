# Bookmarklet Loader

Bookmarklet Loader is a template [bookmarklet](http://en.wikipedia.org/wiki/Bookmarklet 'Bookmarklet') that injects a .js and .css link into the current page.

[Pinterest](http://pinterest.com/about/goodies/) and [Instapaper](http://www.instapaper.com/extras) use similar implementations as Bookmarklet Loader to load their bookmarklet code.

## Usage

Update the following in 'bookmarklet-loader.js.coffee' to refer to your app's .js and .css.  If
you don't want to include both a .js or .css, you can pass 'null' instead of a url for either.

```
loader = new BookmarkletLoader 'yourApp',
'http://example.com/your-app.js',
'http://example.com/your-app.css'
```

Bookmarklet Loader is written in CoffeeScript, however bookmarklets must be JavaScript and URL encoded.  [CoffeeMarklet](http://johtso.github.com/CoffeeMarklet/) does a great job of converting CoffeeScript to bookmarklet-friendly JavaScript.  I recommend you use it to generate your bookmarklet.

## Contact

Contact me if you have a question-- [Matt Hodan blog](http://blog.matthodan.com).
