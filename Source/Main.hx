package;

import openfl.display.Sprite;

class Main extends Sprite {
    public function new() {
        super();
        trace("Windows XP Simulation loaded!");

        // Cria um iframe para carregar o HTML do assets
        var iframe = js.Browser.document.createElement("iframe");
        iframe.src = "assets/index.html";
        iframe.width = "1024";
        iframe.height = "768";
        iframe.style.border = "none";

        js.Browser.document.body.appendChild(iframe);
    }
}