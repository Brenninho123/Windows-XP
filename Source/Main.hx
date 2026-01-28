package;

import openfl.display.Sprite;
import openfl.Lib;
import openfl.events.Event;

class Main extends Sprite {

    public function new() {
        super();
        trace("Windows XP Simulation loaded!");

        #if html5
        loadHTML5();
        #elseif android
        loadAndroid();
        #end
    }

    #if html5
    private function loadHTML5():Void {
        var iframe = cast js.Browser.document.createElement("iframe"), js.html.HTMLIFrameElement;
        iframe.src = "assets/index.html";
        iframe.width = "1024";
        iframe.height = "768";
        iframe.style.border = "none";

        js.Browser.document.body.appendChild(iframe);
    }
    #end

    #if android
    private function loadAndroid():Void {
        var container = new Sprite();
        container.graphics.beginFill(0x008080); // fundo XP
        container.graphics.drawRect(0, 0, 1024, 768);
        container.graphics.endFill();

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