var BookmarkletLoader, loader;

BookmarkletLoader = (function() {

  function BookmarkletLoader(id, script, style) {
    this.id = id;
    this.script = script;
    this.style = style;
    if (this.find(this.id) === null) this.add();
  }

  BookmarkletLoader.prototype.find = function() {
    return document.getElementById(this.id);
  };

  BookmarkletLoader.prototype.remove = function() {
    return document.body.removeChild(this.find(this.id));
  };

  BookmarkletLoader.prototype.add = function() {
    var root, script, style;
    root = document.createElement('div');
    root.id = this.id;
    if (this.script !== null) {
      script = document.createElement('script');
      script.type = 'text/javascript';
      script.charset = 'UTF-8';
      script.src = this.script;
      root.appendChild(script);
    }
    if (this.style !== null) {
      style = document.createElement('link');
      style.href = this.style;
      style.rel = 'stylesheet';
      style.type = 'text/css';
      root.appendChild(style);
    }
    return document.body.appendChild(root);
  };

  return BookmarkletLoader;

})();

loader = new BookmarkletLoader('yourApp', 'http://example.com/your-app.js', 'http://example.com/your-app.css');
