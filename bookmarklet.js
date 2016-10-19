javascript:(function() {
  var div = document.createElement("div");
  div.id="elm";

  var script = document.createElement("script");
  script.src="//gist.githubusercontent.com/jhrcek/14198bf5d66fa956989462b0eb55a661/raw/4178ccfe2e36c046375bc3cbabb9b917b3db585f/testapp.js";
  script.onload=function() {
     var node = document.getElementById('elm');
     Elm.Main.embed(node, {currentUrl:window.location.href});
  };

  document.body.appendChild(div);
  document.body.appendChild(script);
})()
