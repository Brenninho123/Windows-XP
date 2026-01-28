package;

import openfl.display.Sprite;
import openfl.Lib;
import openfl.events.Event;

class Main extends Sprite {

    public function new() {
        super();
        trace("Windows XP Simulation loaded!");

        // Detecta a plataforma
        #if html5
        loadHTML5();
        #elseif android
        loadAndroid();
        #else
        trace("Plataforma não suportada diretamente.");
        #end
    }

    #if html5
    private function loadHTML5():Void {
        // Cria iframe para HTML5
        var iframe = js.Browser.document.createElement("iframe");
        iframe.src = "assets/index.html";
        iframe.width = "1024";
        iframe.height = "768";
        iframe.style.border = "none";

        js.Browser.document.body.appendChild(iframe);
    }
    #end

    #if android
    private function loadAndroid():Void {
        // Carrega a interface diretamente (ou pode abrir WebView nativo depois)
        var container = new Sprite();
        container.graphics.beginFill(0x008080); // fundo teal XP
        container.graphics.drawRect(0, 0, 1024, 768);
        container.graphics.endFill();

        // Mensagem simples na tela
        var message = new openfl.text.TextField();
        message.text = "Windows XP Simulation - Android";
        message.textColor = 0xFFFFFF;
        message.width = 1024;
        message.y = 100;
        message.selectable = false;

        container.addChild(message);
        addChild(container);
    }
    #end
}